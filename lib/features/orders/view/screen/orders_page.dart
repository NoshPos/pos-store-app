import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../home/model/order.dart';
import '../../../home/view/widgets/store_selector.dart';
import '../../viewmodel/orders_viewmodel.dart';
import '../widgets/order_card.dart';
import '../widgets/order_filter_tabs.dart';
import 'order_details_page.dart';

class OrdersPage extends ConsumerWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ordersAsync = ref.watch(ordersListProvider);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        // ── Top bar ───────────────────────────────────────────────
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            color: colorScheme.surface,
            border: Border(
              bottom: BorderSide(color: colorScheme.outlineVariant, width: 0.5),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Order Management',
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 24),
              const StoreSelector(),
              const Spacer(),
              IconButton(
                onPressed: () => ref.invalidate(ordersListProvider),
                icon: const Icon(Icons.refresh),
                tooltip: 'Refresh',
              ),
            ],
          ),
        ),

        // ── Filter tabs ──────────────────────────────────────────
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: OrderFilterTabs(),
        ),

        // ── Orders grid ─────────────────────────────────────────
        Expanded(
          child: ordersAsync.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => _ErrorView(
              message: e.toString(),
              onRetry: () => ref.invalidate(ordersListProvider),
            ),
            data: (orders) {
              if (orders.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.receipt_long_outlined,
                        size: 64,
                        color: colorScheme.onSurfaceVariant.withValues(
                          alpha: 0.35,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'No orders found',
                        style: textTheme.bodyLarge?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Orders will appear here once created',
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                );
              }

              return RefreshIndicator(
                onRefresh: () =>
                    ref.read(ordersListProvider.notifier).refresh(),
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 8,
                  ),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 340,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 1.35,
                  ),
                  itemCount: orders.length,
                  itemBuilder: (context, index) {
                    final order = orders[index];
                    return OrderCard(
                      order: order,
                      onTap: () => _openOrderDetails(context, ref, order),
                      onDoubleTap: () {},
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Future<void> _openOrderDetails(
    BuildContext context,
    WidgetRef ref,
    Order order,
  ) async {
    await Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (_) => OrderDetailsPage(order: order)));
    ref.invalidate(ordersListProvider);
  }
}

// ---------------------------------------------------------------------------
// Small error widget with retry
// ---------------------------------------------------------------------------

class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorView({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.error_outline,
            size: 48,
            color: Theme.of(context).colorScheme.error,
          ),
          const SizedBox(height: 12),
          Text(
            message,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 12),
          FilledButton.tonal(onPressed: onRetry, child: const Text('Retry')),
        ],
      ),
    );
  }
}
