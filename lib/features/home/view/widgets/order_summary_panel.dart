import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/cart_item.dart';
import '../../viewmodel/home_viewmodel.dart';

class OrderSummaryPanel extends ConsumerWidget {
  const OrderSummaryPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final cartItems = ref.watch(cartProvider);
    final orderType = ref.watch(selectedOrderTypeProvider);
    final paymentMethod = ref.watch(selectedPaymentMethodProvider);
    final orderOps = ref.watch(orderOperationsProvider);
    final currentOrderId = ref.watch(currentOrderIdProvider);
    final currentOrder = ref.watch(currentOrderProvider);

    final subtotal = cartItems.fold<double>(
      0,
      (s, e) => s + e.product.price * e.quantity,
    );
    final taxAmount = cartItems.fold<double>(
      0,
      (s, e) => s + (e.product.price * e.quantity * e.product.taxPercent / 100),
    );
    final grandTotal = subtotal + taxAmount;

    final bool hasOrder = currentOrderId != null;

    return Container(
      width: 320,
      decoration: BoxDecoration(
        color: colorScheme.surface,
        border: Border(
          left: BorderSide(color: colorScheme.outlineVariant, width: 0.5),
        ),
      ),
      child: Column(
        children: [
          // Current order indicator
          if (hasOrder)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              color: colorScheme.primaryContainer,
              child: Row(
                children: [
                  Icon(
                    Icons.receipt,
                    size: 16,
                    color: colorScheme.onPrimaryContainer,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Order #${currentOrder?.orderNumber ?? currentOrderId.substring(0, 8)}',
                      style: textTheme.labelMedium?.copyWith(
                        color: colorScheme.onPrimaryContainer,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      ref.read(orderOperationsProvider.notifier).newOrder();
                    },
                    child: Icon(
                      Icons.close,
                      size: 18,
                      color: colorScheme.onPrimaryContainer,
                    ),
                  ),
                ],
              ),
            ),

          // Order type tabs
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                _OrderTypeTab(
                  label: 'Dine In',
                  value: 'dine_in',
                  selected: orderType,
                  onTap: () => ref
                      .read(selectedOrderTypeProvider.notifier)
                      .select('dine_in'),
                ),
                const SizedBox(width: 8),
                _OrderTypeTab(
                  label: 'Take Away',
                  value: 'take_away',
                  selected: orderType,
                  onTap: () => ref
                      .read(selectedOrderTypeProvider.notifier)
                      .select('take_away'),
                ),
                const SizedBox(width: 8),
                _OrderTypeTab(
                  label: 'Delivery',
                  value: 'delivery',
                  selected: orderType,
                  onTap: () => ref
                      .read(selectedOrderTypeProvider.notifier)
                      .select('delivery'),
                ),
              ],
            ),
          ),

          // Table selection for dine-in
          if (orderType == 'dine_in') _DineInTableSelector(),

          const SizedBox(height: 8),
          Divider(height: 1, color: colorScheme.outlineVariant),

          // Cart items
          Expanded(
            child: cartItems.isEmpty
                ? Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          size: 48,
                          color: colorScheme.onSurfaceVariant.withValues(
                            alpha: 0.4,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Cart is empty',
                          style: textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                        Text(
                          'Add products to get started',
                          style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant.withValues(
                              alpha: 0.7,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : ListView.separated(
                    padding: const EdgeInsets.all(12),
                    itemCount: cartItems.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 8),
                    itemBuilder: (context, index) =>
                        _CartItemTile(item: cartItems[index]),
                  ),
          ),

          // Totals + action buttons
          Divider(height: 1, color: colorScheme.outlineVariant),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                _TotalRow(label: 'Subtotal', amount: subtotal),
                const SizedBox(height: 4),
                _TotalRow(label: 'Taxes', amount: taxAmount),
                const SizedBox(height: 4),
                _TotalRow(label: 'Discount', amount: 0),
                const Divider(height: 16),
                _TotalRow(
                  label: 'Grand Total',
                  amount: grandTotal,
                  isBold: true,
                ),
                const SizedBox(height: 12),
                // Payment method
                DropdownButtonFormField<String>(
                  initialValue: paymentMethod,
                  decoration: InputDecoration(
                    labelText: 'Payment Method',
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(value: 'cash', child: Text('Cash')),
                    DropdownMenuItem(value: 'card', child: Text('Card')),
                    DropdownMenuItem(value: 'upi', child: Text('UPI')),
                  ],
                  onChanged: (val) {
                    if (val != null) {
                      ref
                          .read(selectedPaymentMethodProvider.notifier)
                          .select(val);
                    }
                  },
                ),
                const SizedBox(height: 12),

                // ── Action buttons based on workflow state ──
                if (!hasOrder) ...[
                  // Save Order button
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: FilledButton.icon(
                      onPressed: cartItems.isEmpty || orderOps.isLoading
                          ? null
                          : () async {
                              final success = await ref
                                  .read(orderOperationsProvider.notifier)
                                  .saveOrder();
                              if (context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      success
                                          ? 'Order saved successfully!'
                                          : ref
                                                    .read(
                                                      orderOperationsProvider,
                                                    )
                                                    .error
                                                    ?.toString() ??
                                                'Failed to save order',
                                    ),
                                  ),
                                );
                              }
                            },
                      icon: orderOps.isLoading
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Icon(Icons.save_outlined, size: 18),
                      label: const Text('Save Order'),
                      style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ] else ...[
                  // Show order status when sent to kitchen
                  if (currentOrder != null &&
                      currentOrder.status != 'open') ...[
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        color: _workflowColor(
                          currentOrder.status,
                        ).withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            _workflowIcon(currentOrder.status),
                            size: 18,
                            color: _workflowColor(currentOrder.status),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            _workflowLabel(currentOrder.status),
                            style: textTheme.labelLarge?.copyWith(
                              color: _workflowColor(currentOrder.status),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],

                  // Send to Kitchen — only when order hasn't been sent yet
                  if ((currentOrder?.status ?? 'open') == 'open') ...[
                    SizedBox(
                      width: double.infinity,
                      height: 44,
                      child: FilledButton.icon(
                        onPressed: orderOps.isLoading
                            ? null
                            : () async {
                                final success = await ref
                                    .read(orderOperationsProvider.notifier)
                                    .sendToKitchen();
                                if (context.mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        success
                                            ? 'Order sent to kitchen!'
                                            : ref
                                                      .read(
                                                        orderOperationsProvider,
                                                      )
                                                      .error
                                                      ?.toString() ??
                                                  'Failed to send to kitchen',
                                      ),
                                    ),
                                  );
                                }
                              },
                        icon: const Icon(Icons.restaurant_outlined, size: 18),
                        label: const Text('Send to Kitchen'),
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],

                  // Payment action — can be taken before or after kitchen flow
                  if ((currentOrder?.paymentStatus ?? 'pending') !=
                          'completed' &&
                      (currentOrder?.status ?? 'open') != 'cancelled') ...[
                    SizedBox(
                      width: double.infinity,
                      height: 44,
                      child: FilledButton.icon(
                        onPressed: orderOps.isLoading
                            ? null
                            : () async {
                                final success = await ref
                                    .read(orderOperationsProvider.notifier)
                                    .completePayment();
                                if (context.mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        success
                                            ? 'Payment completed!'
                                            : ref
                                                      .read(
                                                        orderOperationsProvider,
                                                      )
                                                      .error
                                                      ?.toString() ??
                                                  'Payment failed',
                                      ),
                                    ),
                                  );
                                }
                              },
                        icon: orderOps.isLoading
                            ? const SizedBox(
                                width: 18,
                                height: 18,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : const Icon(Icons.payment_outlined, size: 18),
                        label: Text(
                          _isPaymentUnlocked(
                                currentOrder?.status,
                                currentOrder?.orderType,
                              )
                              ? 'Complete Payment'
                              : 'Take Advance Payment',
                        ),
                        style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ] else if ((currentOrder?.paymentStatus ?? 'pending') ==
                      'completed') ...[
                    // Payment completed banner
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.green.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Payment Completed',
                            style: textTheme.labelLarge?.copyWith(
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: OutlinedButton.icon(
                        onPressed: orderOps.isLoading
                            ? null
                            : () => _showEditPaymentDialog(context, ref),
                        icon: const Icon(Icons.edit_note_outlined, size: 18),
                        label: const Text('Edit Payment'),
                      ),
                    ),
                    if ((currentOrder?.status ?? 'open') == 'paid' ||
                        (currentOrder?.status ?? 'open') == 'cancelled') ...[
                      const SizedBox(height: 8),
                      SizedBox(
                        width: double.infinity,
                        height: 44,
                        child: FilledButton.icon(
                          onPressed: () => ref
                              .read(orderOperationsProvider.notifier)
                              .newOrder(),
                          icon: const Icon(Icons.add, size: 18),
                          label: const Text('New Order'),
                          style: FilledButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ] else ...[
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: colorScheme.onSurfaceVariant,
                            size: 18,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Payment unlocks when kitchen flow is complete',
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: textTheme.labelMedium?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void _showEditPaymentDialog(BuildContext context, WidgetRef ref) {
  final currentOrder = ref.read(currentOrderProvider);
  final selectedMethod = ref.read(selectedPaymentMethodProvider);
  final amountController = TextEditingController(
    text: (currentOrder?.grandTotal ?? 0).toStringAsFixed(2),
  );
  var method = selectedMethod;

  showDialog(
    context: context,
    builder: (ctx) => StatefulBuilder(
      builder: (ctx, setDialogState) => AlertDialog(
        title: const Text('Edit Payment'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: amountController,
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              decoration: const InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
                prefixText: '₹ ',
              ),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              initialValue: method,
              decoration: const InputDecoration(
                labelText: 'Payment Method',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: 'cash', child: Text('Cash')),
                DropdownMenuItem(value: 'card', child: Text('Card')),
                DropdownMenuItem(value: 'upi', child: Text('UPI')),
              ],
              onChanged: (value) {
                if (value != null) {
                  setDialogState(() {
                    method = value;
                  });
                }
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () async {
              final amount = double.tryParse(amountController.text.trim());
              if (amount == null || amount <= 0) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Enter a valid amount')),
                );
                return;
              }

              Navigator.pop(ctx);
              final success = await ref
                  .read(orderOperationsProvider.notifier)
                  .editLatestPayment(amount: amount, paymentMethod: method);
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      success
                          ? 'Payment updated'
                          : ref
                                    .read(orderOperationsProvider)
                                    .error
                                    ?.toString() ??
                                'Failed to update payment',
                    ),
                  ),
                );
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    ),
  );
}

bool _isPaymentUnlocked(String? status, String? orderType) {
  final s = (status ?? 'open').toLowerCase();
  final t = (orderType ?? 'dine_in').toLowerCase();

  if (s == 'paid' || s == 'completed') return true;
  if (t == 'dine_in') return s == 'served' || s == 'ready';
  if (t == 'takeaway' || t == 'take_away') {
    return s == 'ready' || s == 'handed_over';
  }
  if (t == 'delivery' || t == 'aggregator') {
    return s == 'ready' || s == 'out_for_delivery' || s == 'delivered';
  }
  return false;
}

class _OrderTypeTab extends StatelessWidget {
  final String label;
  final String value;
  final String selected;
  final VoidCallback onTap;

  const _OrderTypeTab({
    required this.label,
    required this.value,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = value == selected;
    final colorScheme = Theme.of(context).colorScheme;

    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: isSelected
                ? colorScheme.primaryContainer
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isSelected
                  ? colorScheme.primary
                  : colorScheme.outlineVariant,
            ),
          ),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
              color: isSelected
                  ? colorScheme.onPrimaryContainer
                  : colorScheme.onSurfaceVariant,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}

class _DineInTableSelector extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tablesAsync = ref.watch(storeTablesProvider);
    final selectedTable = ref.watch(selectedTableProvider);

    return tablesAsync.when(
      loading: () => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: LinearProgressIndicator(),
      ),
      error: (e, _) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          'Failed to load tables',
          style: TextStyle(color: Colors.red, fontSize: 12),
        ),
      ),
      data: (tables) {
        if (tables.isEmpty) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'No tables configured for this store',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: DropdownButtonFormField<int>(
            initialValue: selectedTable?.tableNumber,
            decoration: InputDecoration(
              labelText: 'Table',
              isDense: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
            ),
            items: tables
                .map(
                  (t) => DropdownMenuItem(
                    value: t.tableNumber,
                    child: Text(
                      t.label.isNotEmpty ? t.label : 'Table ${t.tableNumber}',
                    ),
                  ),
                )
                .toList(),
            onChanged: (tableNumber) {
              if (tableNumber != null) {
                final table = tables.firstWhere(
                  (t) => t.tableNumber == tableNumber,
                );
                ref.read(selectedTableProvider.notifier).select(table);
              }
            },
          ),
        );
      },
    );
  }
}

class _CartItemTile extends ConsumerWidget {
  final CartItem item;

  const _CartItemTile({required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final lineTotal = item.product.price * item.quantity;

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          // Icon placeholder
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              Icons.fastfood_outlined,
              size: 18,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(width: 8),
          // Name + price
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.product.name,
                  style: textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '₹${item.product.price.toStringAsFixed(2)}',
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          // Quantity controls
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _QtyButton(
                icon: Icons.remove,
                onTap: () => ref
                    .read(cartProvider.notifier)
                    .updateQuantity(item.product.id, item.quantity - 1),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  '${item.quantity}',
                  style: textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              _QtyButton(
                icon: Icons.add,
                onTap: () => ref
                    .read(cartProvider.notifier)
                    .updateQuantity(item.product.id, item.quantity + 1),
              ),
            ],
          ),
          const SizedBox(width: 8),
          // Line total
          Text(
            '₹${lineTotal.toStringAsFixed(2)}',
            style: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class _QtyButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _QtyButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(6),
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(icon, size: 14),
      ),
    );
  }
}

class _TotalRow extends StatelessWidget {
  final String label;
  final double amount;
  final bool isBold;

  const _TotalRow({
    required this.label,
    required this.amount,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final style = isBold
        ? textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)
        : textTheme.bodySmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: style),
        Text('₹${amount.toStringAsFixed(2)}', style: style),
      ],
    );
  }
}

// ── Workflow status helpers ──────────────────────────────────────────────

Color _workflowColor(String status) {
  return switch (status) {
    'open' => Colors.blue,
    'sent_to_kitchen' => Colors.orange,
    'preparing' => Colors.amber.shade700,
    'ready' => Colors.green,
    'served' || 'handed_over' || 'delivered' => Colors.teal,
    'out_for_delivery' => Colors.deepOrange,
    'completed' => Colors.teal,
    'paid' => Colors.grey.shade600,
    _ => Colors.grey,
  };
}

IconData _workflowIcon(String status) {
  return switch (status) {
    'open' => Icons.receipt_long_outlined,
    'sent_to_kitchen' => Icons.restaurant_outlined,
    'preparing' => Icons.soup_kitchen_outlined,
    'ready' => Icons.done_all,
    'served' => Icons.room_service_outlined,
    'handed_over' => Icons.takeout_dining,
    'out_for_delivery' => Icons.delivery_dining,
    'delivered' => Icons.location_on_outlined,
    'completed' => Icons.task_alt,
    'paid' => Icons.paid_outlined,
    _ => Icons.info_outline,
  };
}

String _workflowLabel(String status) {
  return switch (status) {
    'open' => 'Order Taken',
    'sent_to_kitchen' => 'Sent to Kitchen',
    'preparing' => 'Preparing',
    'ready' => 'Ready',
    'served' => 'Served',
    'handed_over' => 'Given to Customer',
    'out_for_delivery' => 'Out for Delivery',
    'delivered' => 'Delivered',
    'completed' => 'Fulfillment Completed',
    'paid' => 'Paid & Closed',
    _ => status,
  };
}
