import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/cart_item.dart';
import '../../viewmodel/home_viewmodel.dart';
import '../../viewmodel/store_viewmodel.dart';

class OrderSummaryPanel extends ConsumerWidget {
  const OrderSummaryPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final cartItems = ref.watch(cartProvider);
    final orderType = ref.watch(selectedOrderTypeProvider);
    final selectedTable = ref.watch(selectedTableProvider);
    final paymentMethod = ref.watch(selectedPaymentMethodProvider);
    final store = ref.watch(selectedStoreProvider);
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
          if (orderType == 'dine_in' &&
              store != null &&
              store.tables.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: DropdownButtonFormField<String>(
                initialValue: selectedTable?.id,
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
                items: store.tables
                    .map(
                      (t) => DropdownMenuItem(
                        value: t.id,
                        child: Text(t.label ?? 'Table ${t.tableNumber}'),
                      ),
                    )
                    .toList(),
                onChanged: (id) {
                  final table = store.tables.firstWhere((t) => t.id == id);
                  ref.read(selectedTableProvider.notifier).select(table);
                },
              ),
            ),

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
                  // Send to Kitchen button
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
                  // Complete Payment button
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
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Icon(Icons.payment_outlined, size: 18),
                      label: const Text('Complete Payment'),
                      style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
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
