import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../home/model/order.dart';
import '../../viewmodel/sales_viewmodel.dart';

class SalesPage extends ConsumerStatefulWidget {
  const SalesPage({super.key});

  @override
  ConsumerState<SalesPage> createState() => _SalesPageState();
}

class _SalesPageState extends ConsumerState<SalesPage> {
  /// When non-null, shows the order detail panel for this order.
  Order? _selectedOrder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: _selectedOrder != null
          ? _OrderDetailPanel(
              order: _selectedOrder!,
              onBack: () => setState(() => _selectedOrder = null),
            )
          : _OrderListPanel(
              onSelect: (o) => setState(() => _selectedOrder = o),
            ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Order List Panel
// ═══════════════════════════════════════════════════════════════════════════

class _OrderListPanel extends ConsumerWidget {
  final ValueChanged<Order> onSelect;
  const _OrderListPanel({required this.onSelect});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ordersAsync = ref.watch(salesOrderListProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Row(
          children: [
            Text(
              'Sales & Orders',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.refresh),
              tooltip: 'Refresh',
              onPressed: () =>
                  ref.read(salesOrderListProvider.notifier).refresh(),
            ),
          ],
        ),
        const SizedBox(height: 16),

        // Filters
        const _SalesFilters(),
        const SizedBox(height: 16),

        // Table
        Expanded(
          child: ordersAsync.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Error: $e',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                  const SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: () =>
                        ref.read(salesOrderListProvider.notifier).refresh(),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
            data: (orders) => orders.isEmpty
                ? const Center(child: Text('No orders found.'))
                : _OrdersDataTable(orders: orders, onSelect: onSelect),
          ),
        ),
      ],
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Sales Filters
// ═══════════════════════════════════════════════════════════════════════════

class _SalesFilters extends ConsumerWidget {
  const _SalesFilters();

  static const _orderStatuses = [
    'open',
    'sent_to_kitchen',
    'preparing',
    'ready',
    'served',
    'handed_over',
    'out_for_delivery',
    'delivered',
    'completed',
    'paid',
    'cancelled',
  ];

  static const _paymentStatuses = [
    'pending',
    'partial',
    'completed',
    'refunded',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statusFilter = ref.watch(salesStatusFilterProvider);
    final paymentFilter = ref.watch(salesPaymentFilterProvider);

    return Wrap(
      spacing: 16,
      runSpacing: 8,
      children: [
        // Order status
        SizedBox(
          width: 180,
          child: DropdownButtonFormField<String>(
            initialValue: statusFilter,
            decoration: const InputDecoration(
              labelText: 'Order Status',
              border: OutlineInputBorder(),
              isDense: true,
            ),
            items: [
              const DropdownMenuItem(value: null, child: Text('All')),
              ..._orderStatuses.map(
                (s) => DropdownMenuItem(value: s, child: Text(_capitalize(s))),
              ),
            ],
            onChanged: (v) =>
                ref.read(salesStatusFilterProvider.notifier).select(v),
          ),
        ),
        // Payment status
        SizedBox(
          width: 180,
          child: DropdownButtonFormField<String>(
            initialValue: paymentFilter,
            decoration: const InputDecoration(
              labelText: 'Payment Status',
              border: OutlineInputBorder(),
              isDense: true,
            ),
            items: [
              const DropdownMenuItem(value: null, child: Text('All')),
              ..._paymentStatuses.map(
                (s) => DropdownMenuItem(value: s, child: Text(_capitalize(s))),
              ),
            ],
            onChanged: (v) =>
                ref.read(salesPaymentFilterProvider.notifier).select(v),
          ),
        ),
      ],
    );
  }

  static String _capitalize(String s) =>
      s.isEmpty ? s : '${s[0].toUpperCase()}${s.substring(1)}';
}

// ═══════════════════════════════════════════════════════════════════════════
// Orders Data Table
// ═══════════════════════════════════════════════════════════════════════════

class _OrdersDataTable extends StatelessWidget {
  final List<Order> orders;
  final ValueChanged<Order> onSelect;
  const _OrdersDataTable({required this.orders, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: cs.outlineVariant),
      ),
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: DataTable(
            headingRowColor: WidgetStateProperty.all(
              cs.surfaceContainerHighest.withValues(alpha: 0.5),
            ),
            columns: const [
              DataColumn(label: Text('Order #')),
              DataColumn(label: Text('Type')),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('Payment')),
              DataColumn(label: Text('Total'), numeric: true),
              DataColumn(label: Text('Created')),
            ],
            rows: orders.map((o) {
              return DataRow(
                onSelectChanged: (_) => onSelect(o),
                cells: [
                  DataCell(
                    Text(
                      o.orderNumber,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  DataCell(Text(_formatOrderType(o.orderType))),
                  DataCell(
                    _StatusBadge(
                      label: o.status,
                      color: _statusColor(o.status),
                    ),
                  ),
                  DataCell(
                    _StatusBadge(
                      label: o.paymentStatus,
                      color: _paymentColor(o.paymentStatus),
                    ),
                  ),
                  DataCell(Text(o.grandTotal.toStringAsFixed(2))),
                  DataCell(
                    Text(
                      o.createdAt != null
                          ? '${o.createdAt!.day}/${o.createdAt!.month} ${o.createdAt!.hour}:${o.createdAt!.minute.toString().padLeft(2, '0')}'
                          : '—',
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  static String _formatOrderType(String type) {
    return type
        .replaceAll('_', ' ')
        .split(' ')
        .map((w) {
          return w.isEmpty ? w : '${w[0].toUpperCase()}${w.substring(1)}';
        })
        .join(' ');
  }

  static Color _statusColor(String status) {
    return switch (status) {
      'completed' => Colors.green,
      'cancelled' => Colors.red,
      'preparing' || 'ready' => Colors.orange,
      _ => Colors.blue,
    };
  }

  static Color _paymentColor(String status) {
    return switch (status) {
      'completed' => Colors.green,
      'refunded' => Colors.red,
      'partial' => Colors.orange,
      _ => Colors.grey,
    };
  }
}

class _StatusBadge extends StatelessWidget {
  final String label;
  final Color color;
  const _StatusBadge({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label.isEmpty
            ? label
            : '${label[0].toUpperCase()}${label.substring(1)}',
        style: TextStyle(fontSize: 12, color: color),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Order Detail Panel
// ═══════════════════════════════════════════════════════════════════════════

class _OrderDetailPanel extends ConsumerWidget {
  final Order order;
  final VoidCallback onBack;
  const _OrderDetailPanel({required this.order, required this.onBack});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Back button + title
        Row(
          children: [
            IconButton(icon: const Icon(Icons.arrow_back), onPressed: onBack),
            const SizedBox(width: 8),
            Text(
              'Order ${order.orderNumber}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Spacer(),
            if (order.paymentStatus != 'completed')
              FilledButton.icon(
                onPressed: () => _showRecordPaymentDialog(context, ref, order),
                icon: const Icon(Icons.payment),
                label: const Text('Record Payment'),
              ),
          ],
        ),
        const SizedBox(height: 24),

        // Order info cards
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left: summary
              Expanded(
                flex: 2,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: cs.outlineVariant),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Summary',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const Divider(),
                        _InfoRow('Status', order.status),
                        _InfoRow('Payment Status', order.paymentStatus),
                        _InfoRow(
                          'Order Type',
                          order.orderType.replaceAll('_', ' '),
                        ),
                        _InfoRow('Subtotal', order.subtotal.toStringAsFixed(2)),
                        _InfoRow('Tax', order.taxAmount.toStringAsFixed(2)),
                        _InfoRow(
                          'Discount',
                          order.discountAmount.toStringAsFixed(2),
                        ),
                        _InfoRow(
                          'Service Charge',
                          order.serviceCharge.toStringAsFixed(2),
                        ),
                        const Divider(),
                        _InfoRow(
                          'Grand Total',
                          order.grandTotal.toStringAsFixed(2),
                          bold: true,
                        ),
                        if (order.notes != null && order.notes!.isNotEmpty) ...[
                          const Divider(),
                          _InfoRow('Notes', order.notes!),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 24),

              // Right: line items
              Expanded(
                flex: 3,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: cs.outlineVariant),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Items (${order.items.length})',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const Divider(),
                        Expanded(
                          child: ListView.separated(
                            itemCount: order.items.length,
                            separatorBuilder: (_, _) =>
                                const Divider(height: 1),
                            itemBuilder: (_, i) {
                              final item = order.items[i];
                              return ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Text(item.productName),
                                subtitle: Text(
                                  'Qty: ${item.quantity}  ×  ${item.price.toStringAsFixed(2)}',
                                ),
                                trailing: Text(
                                  item.total.toStringAsFixed(2),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _showRecordPaymentDialog(
    BuildContext context,
    WidgetRef ref,
    Order order,
  ) {
    showDialog(
      context: context,
      builder: (_) => _RecordPaymentDialog(order: order),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Info Row (key-value)
// ═══════════════════════════════════════════════════════════════════════════

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;
  final bool bold;
  const _InfoRow(this.label, this.value, {this.bold = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: Theme.of(context).textTheme.bodyMedium),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: bold ? FontWeight.w700 : FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Record Payment Dialog
// ═══════════════════════════════════════════════════════════════════════════

class _RecordPaymentDialog extends ConsumerStatefulWidget {
  final Order order;
  const _RecordPaymentDialog({required this.order});

  @override
  ConsumerState<_RecordPaymentDialog> createState() =>
      _RecordPaymentDialogState();
}

class _RecordPaymentDialogState extends ConsumerState<_RecordPaymentDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _amountCtrl;
  final _tipCtrl = TextEditingController(text: '0');
  final _refCtrl = TextEditingController();
  String _method = 'cash';

  @override
  void initState() {
    super.initState();
    _amountCtrl = TextEditingController(
      text: widget.order.grandTotal.toStringAsFixed(2),
    );
  }

  @override
  void dispose() {
    _amountCtrl.dispose();
    _tipCtrl.dispose();
    _refCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    final payment = PaymentCreate(
      orderId: widget.order.id,
      paymentMethod: _method,
      amount: double.tryParse(_amountCtrl.text) ?? 0,
      tipAmount: double.tryParse(_tipCtrl.text) ?? 0,
      reference: _refCtrl.text.trim().isEmpty ? null : _refCtrl.text.trim(),
    );

    final success = await ref
        .read(recordPaymentActionProvider.notifier)
        .recordPayment(payment);
    if (success && mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(recordPaymentActionProvider);
    final isLoading = actionState is AsyncLoading;

    return AlertDialog(
      title: const Text('Record Payment'),
      content: SizedBox(
        width: 400,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButtonFormField<String>(
                initialValue: _method,
                decoration: const InputDecoration(
                  labelText: 'Payment Method',
                  border: OutlineInputBorder(),
                ),
                items: const [
                  DropdownMenuItem(value: 'cash', child: Text('Cash')),
                  DropdownMenuItem(value: 'card', child: Text('Card')),
                  DropdownMenuItem(value: 'upi', child: Text('UPI')),
                  DropdownMenuItem(value: 'wallet', child: Text('Wallet')),
                ],
                onChanged: (v) => setState(() => _method = v ?? 'cash'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _amountCtrl,
                decoration: const InputDecoration(
                  labelText: 'Amount *',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return 'Required';
                  if (double.tryParse(v) == null) return 'Invalid';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _tipCtrl,
                decoration: const InputDecoration(
                  labelText: 'Tip Amount',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _refCtrl,
                decoration: const InputDecoration(
                  labelText: 'Reference',
                  border: OutlineInputBorder(),
                ),
              ),
              if (actionState is AsyncError) ...[
                const SizedBox(height: 16),
                Text(
                  actionState.error.toString(),
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ],
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: isLoading ? null : () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: isLoading ? null : _submit,
          child: isLoading
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Text('Submit'),
        ),
      ],
    );
  }
}
