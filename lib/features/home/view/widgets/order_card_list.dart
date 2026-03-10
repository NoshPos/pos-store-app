import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../model/order.dart';
import '../../viewmodel/home_viewmodel.dart';

class OrderCardList extends ConsumerWidget {
  const OrderCardList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ordersAsync = ref.watch(activeOrdersProvider);
    final currentOrderId = ref.watch(currentOrderIdProvider);

    return ordersAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(child: Text('Error: $e')),
      data: (orders) {
        if (orders.isEmpty) {
          return Center(
            child: Text(
              'No active orders',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          );
        }
        return SizedBox(
          height: 130,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: orders.length,
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            itemBuilder: (context, index) => _OrderCard(
              order: orders[index],
              isSelected: orders[index].id == currentOrderId,
              onTap: () {
                ref
                    .read(orderOperationsProvider.notifier)
                    .loadOrder(orders[index]);
              },
            ),
          ),
        );
      },
    );
  }
}

class _OrderCard extends StatelessWidget {
  final Order order;
  final bool isSelected;
  final VoidCallback? onTap;

  const _OrderCard({required this.order, this.isSelected = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final progress = _statusProgress(order.status);
    final statusColor = _statusColor(order.status, colorScheme);
    final dateStr = order.createdAt != null
        ? DateFormat('dd MMM, hh:mm a').format(order.createdAt!)
        : '';

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected
              ? colorScheme.primaryContainer
              : colorScheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected
                ? colorScheme.primary
                : colorScheme.outlineVariant,
            width: isSelected ? 2 : 0.5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '#${order.orderNumber}',
                  style: textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    _statusLabel(order.status),
                    style: textTheme.labelSmall?.copyWith(color: statusColor),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              '${order.orderType == 'dine_in' ? 'Table' : order.orderType} • $dateStr',
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  '${order.items.length} Items',
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                const Spacer(),
                Text(
                  '${(progress * 100).toInt()}%',
                  style: textTheme.labelSmall?.copyWith(
                    color: statusColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: colorScheme.surfaceContainerHighest,
                color: statusColor,
                minHeight: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }

  double _statusProgress(String status) {
    return switch (status) {
      'pending' || 'open' => 0.1,
      'confirmed' || 'sent_to_kitchen' => 0.3,
      'preparing' => 0.5,
      'ready' => 0.8,
      'served' || 'delivered' => 0.95,
      'completed' => 1.0,
      _ => 0.0,
    };
  }

  String _statusLabel(String status) {
    return switch (status) {
      'pending' || 'open' => 'Open',
      'confirmed' => 'Confirmed',
      'sent_to_kitchen' => 'In Kitchen',
      'preparing' => 'Cooking',
      'ready' => 'Ready',
      'served' => 'Served',
      'delivered' => 'Delivered',
      'completed' => 'Done',
      'cancelled' => 'Cancelled',
      _ => status,
    };
  }

  Color _statusColor(String status, ColorScheme cs) {
    return switch (status) {
      'pending' || 'open' => Colors.orange,
      'confirmed' => Colors.blue,
      'sent_to_kitchen' || 'preparing' => cs.primary,
      'ready' => Colors.green,
      'served' || 'delivered' || 'completed' => Colors.teal,
      'cancelled' => cs.error,
      _ => cs.onSurfaceVariant,
    };
  }
}
