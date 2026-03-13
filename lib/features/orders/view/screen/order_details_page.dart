import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../home/model/order.dart';
import '../../../home/repository/order_repository.dart';
import '../../viewmodel/orders_viewmodel.dart';

/// Full-screen dialog showing order details with actions.
class OrderDetailsPage extends ConsumerStatefulWidget {
  final Order order;

  const OrderDetailsPage({super.key, required this.order});

  @override
  ConsumerState<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends ConsumerState<OrderDetailsPage> {
  late Order _order;
  bool _isRefreshing = false;

  @override
  void initState() {
    super.initState();
    _order = widget.order;
    _refreshOrder();
  }

  Future<void> _refreshOrder() async {
    if (_isRefreshing) return;
    setState(() {
      _isRefreshing = true;
    });

    final latest = await ref
        .read(orderRepositoryProvider)
        .getOrderById(_order.id);

    if (!mounted) return;
    latest.fold((_) {}, (order) {
      _order = order;
    });

    if (mounted) {
      setState(() {
        _isRefreshing = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final ops = ref.watch(ordersPageOperationsProvider);

    final total = _order.grandTotal > 0
        ? _order.grandTotal
        : _order.items.fold<double>(0, (s, i) => s + i.total);
    final dateStr = _order.createdAt != null
        ? DateFormat('dd MMM yyyy, hh:mm a').format(_order.createdAt!.toLocal())
        : '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Order #${_order.orderNumber}'),
        centerTitle: false,
        actions: [
          IconButton(
            tooltip: 'Refresh',
            onPressed: _isRefreshing ? null : _refreshOrder,
            icon: _isRefreshing
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Row(
        children: [
          // Left: Order items table
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Items',
                    style: textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    child: _order.items.isEmpty
                        ? Center(
                            child: Text(
                              'No items in this order',
                              style: textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          )
                        : _buildItemsTable(context),
                  ),
                ],
              ),
            ),
          ),

          // Right: Order summary
          Container(
            width: 320,
            decoration: BoxDecoration(
              color: colorScheme.surface,
              border: Border(
                left: BorderSide(color: colorScheme.outlineVariant, width: 0.5),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Summary',
                    style: textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Info rows
                  _InfoRow(
                    label: 'Status',
                    child: _StatusBadge(status: _order.status),
                  ),
                  const SizedBox(height: 12),
                  _InfoRow(
                    label: 'Order Type',
                    child: Text(
                      _orderTypeLabel(_order.orderType),
                      style: textTheme.bodyMedium,
                    ),
                  ),
                  if (_order.tableNumber != null) ...[
                    const SizedBox(height: 12),
                    _InfoRow(
                      label: 'Table',
                      child: Text('Assigned', style: textTheme.bodyMedium),
                    ),
                  ],
                  const SizedBox(height: 12),
                  _InfoRow(
                    label: 'Payment',
                    child: _PaymentBadge(status: _order.paymentStatus),
                  ),
                  const SizedBox(height: 12),
                  _InfoRow(
                    label: 'Created',
                    child: Text(dateStr, style: textTheme.bodySmall),
                  ),

                  if (_order.notes != null && _order.notes!.isNotEmpty) ...[
                    const SizedBox(height: 12),
                    _InfoRow(
                      label: 'Notes',
                      child: Text(_order.notes!, style: textTheme.bodySmall),
                    ),
                  ],

                  const Spacer(),
                  const Divider(),
                  const SizedBox(height: 8),

                  // Totals
                  _SummaryRow(label: 'Subtotal', amount: _order.subtotal),
                  const SizedBox(height: 4),
                  _SummaryRow(label: 'Tax', amount: _order.taxAmount),
                  const SizedBox(height: 4),
                  _SummaryRow(
                    label: 'Service Charge',
                    amount: _order.serviceCharge,
                  ),
                  const SizedBox(height: 4),
                  _SummaryRow(
                    label: 'Discount',
                    amount: -_order.discountAmount,
                  ),
                  const Divider(height: 16),
                  _SummaryRow(label: 'Total', amount: total, isBold: true),
                  const SizedBox(height: 16),

                  // Pay button
                  if (_order.paymentStatus != 'completed' &&
                      _order.status != 'cancelled')
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: ops.isLoading
                            ? null
                            : () => _showPaymentDialog(total),
                        icon: const Icon(Icons.payment),
                        label: Text(
                          _isPaymentUnlocked(_order)
                              ? 'Process Payment'
                              : 'Take Advance Payment',
                        ),
                      ),
                    )
                  else if (_order.paymentStatus != 'completed')
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Payment will unlock once kitchen/service flow is done for this order type.',
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemsTable(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: DataTable(
        headingRowColor: WidgetStatePropertyAll(
          colorScheme.surfaceContainerLow,
        ),
        columns: const [
          DataColumn(label: Text('#')),
          DataColumn(label: Text('Product')),
          DataColumn(label: Text('Qty'), numeric: true),
          DataColumn(label: Text('Price'), numeric: true),
          DataColumn(label: Text('Tax'), numeric: true),
          DataColumn(label: Text('Total'), numeric: true),
        ],
        rows: _order.items.asMap().entries.map((entry) {
          final i = entry.key + 1;
          final item = entry.value;
          return DataRow(
            cells: [
              DataCell(Text('$i')),
              DataCell(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item.productName,
                      style: textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (item.notes != null && item.notes!.isNotEmpty)
                      Text(
                        item.notes!,
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                  ],
                ),
              ),
              DataCell(Text('${item.quantity}')),
              DataCell(Text('\u20B9${item.price.toStringAsFixed(2)}')),
              DataCell(Text('\u20B9${item.taxAmount.toStringAsFixed(2)}')),
              DataCell(
                Text(
                  '\u20B9${item.total.toStringAsFixed(2)}',
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  void _showPaymentDialog(double total) {
    String method = 'cash';
    final amountController = TextEditingController(
      text: total.toStringAsFixed(2),
    );
    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setDialogState) => AlertDialog(
          title: const Text('Process Payment'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Order Total: \u20B9${total.toStringAsFixed(2)}',
                style: Theme.of(ctx).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: amountController,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: const InputDecoration(
                  labelText: 'Amount',
                  border: OutlineInputBorder(),
                  prefixText: '\u20B9 ',
                ),
              ),
              const SizedBox(height: 12),
              SegmentedButton<String>(
                segments: const [
                  ButtonSegment(value: 'cash', label: Text('Cash')),
                  ButtonSegment(value: 'card', label: Text('Card')),
                  ButtonSegment(value: 'upi', label: Text('UPI')),
                ],
                selected: {method},
                onSelectionChanged: (val) {
                  setDialogState(() => method = val.first);
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
                  if (!mounted) return;
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Enter a valid payment amount'),
                    ),
                  );
                  return;
                }
                Navigator.pop(ctx);
                final success = await ref
                    .read(ordersPageOperationsProvider.notifier)
                    .processPayment(
                      orderId: _order.id,
                      paymentMethod: method,
                      amount: amount,
                    );
                if (success && mounted) {
                  final latest = await ref
                      .read(orderRepositoryProvider)
                      .getOrderById(_order.id);
                  latest.fold((_) {}, (order) {
                    if (mounted) {
                      setState(() {
                        _order = order;
                      });
                    }
                  });
                }
              },
              child: const Text('Pay'),
            ),
          ],
        ),
      ),
    );
  }

  // ---- Helpers ----

  bool _isPaymentUnlocked(Order order) {
    final status = order.status.toLowerCase();
    final type = order.orderType.toLowerCase();

    if (status == 'paid' || status == 'completed') return true;
    if (type == 'dine_in') return status == 'served' || status == 'ready';
    if (type == 'takeaway' || type == 'take_away') {
      return status == 'ready' || status == 'handed_over';
    }
    if (type == 'delivery' || type == 'aggregator') {
      return status == 'ready' ||
          status == 'out_for_delivery' ||
          status == 'delivered';
    }
    return false;
  }

  String _orderTypeLabel(String type) {
    return switch (type) {
      'dine_in' => 'Dine In',
      'takeaway' || 'take_away' => 'Takeaway',
      'delivery' => 'Delivery',
      _ => type,
    };
  }
}

// ---------------------------------------------------------------------------
// Small reusable widgets
// ---------------------------------------------------------------------------

class _InfoRow extends StatelessWidget {
  final String label;
  final Widget child;

  const _InfoRow({required this.label, required this.child});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            label,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        Expanded(child: child),
      ],
    );
  }
}

class _StatusBadge extends StatelessWidget {
  final String status;

  const _StatusBadge({required this.status});

  @override
  Widget build(BuildContext context) {
    final color = _statusColor(status, Theme.of(context).colorScheme);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        _statusLabel(status),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  String _statusLabel(String s) => switch (s) {
    'open' => 'Open',
    'sent_to_kitchen' => 'Sent to Kitchen',
    'preparing' => 'Preparing',
    'ready' => 'Ready',
    'served' => 'Served',
    'handed_over' => 'Handed Over',
    'out_for_delivery' => 'Out for Delivery',
    'delivered' => 'Delivered',
    'completed' => 'Completed',
    'paid' => 'Paid',
    'cancelled' => 'Cancelled',
    _ => s,
  };

  Color _statusColor(String s, ColorScheme cs) => switch (s) {
    'open' => Colors.blue,
    'sent_to_kitchen' => Colors.orange,
    'preparing' => Colors.amber.shade700,
    'ready' => Colors.green,
    'served' || 'handed_over' || 'delivered' => Colors.teal,
    'out_for_delivery' => Colors.deepOrange,
    'completed' => Colors.teal,
    'paid' => Colors.grey,
    'cancelled' => cs.error,
    _ => cs.onSurfaceVariant,
  };
}

class _PaymentBadge extends StatelessWidget {
  final String status;

  const _PaymentBadge({required this.status});

  @override
  Widget build(BuildContext context) {
    final color = switch (status) {
      'pending' => Colors.orange,
      'completed' => Colors.green,
      'partial' => Colors.blue,
      'refunded' => Theme.of(context).colorScheme.error,
      _ => Theme.of(context).colorScheme.onSurfaceVariant,
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        status[0].toUpperCase() + status.substring(1),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final String label;
  final double amount;
  final bool isBold;

  const _SummaryRow({
    required this.label,
    required this.amount,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    final style = isBold
        ? Theme.of(
            context,
          ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)
        : Theme.of(context).textTheme.bodyMedium;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: style),
        Text('\u20B9${amount.toStringAsFixed(2)}', style: style),
      ],
    );
  }
}
