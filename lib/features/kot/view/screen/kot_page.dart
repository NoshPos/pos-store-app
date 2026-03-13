import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../home/view/widgets/store_selector.dart';
import '../../model/kot.dart';
import '../../viewmodel/kot_viewmodel.dart';

class KotPage extends ConsumerWidget {
  const KotPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ticketsAsync = ref.watch(kitchenOrdersListProvider);
    final statusFilter = ref.watch(kotStatusFilterProvider);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        // ── Top bar ─────────────────────────────────────────────
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
              Icon(Icons.restaurant_menu, color: colorScheme.primary),
              const SizedBox(width: 12),
              Text(
                'Kitchen Display',
                style: textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 24),
              const StoreSelector(),
              const Spacer(),
              IconButton(
                onPressed: () => ref.invalidate(kitchenOrdersListProvider),
                icon: const Icon(Icons.refresh),
                tooltip: 'Refresh',
              ),
            ],
          ),
        ),

        // ── Status filter chips ─────────────────────────────────
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _KotFilterChip(
                  label: 'All',
                  value: null,
                  selected: statusFilter,
                  onSelected: () =>
                      ref.read(kotStatusFilterProvider.notifier).select(null),
                ),
                const SizedBox(width: 8),
                _KotFilterChip(
                  label: 'Pending',
                  value: 'PENDING',
                  selected: statusFilter,
                  onSelected: () => ref
                      .read(kotStatusFilterProvider.notifier)
                      .select('PENDING'),
                ),
                const SizedBox(width: 8),
                _KotFilterChip(
                  label: 'Preparing',
                  value: 'PREPARING',
                  selected: statusFilter,
                  onSelected: () => ref
                      .read(kotStatusFilterProvider.notifier)
                      .select('PREPARING'),
                ),
                const SizedBox(width: 8),
                _KotFilterChip(
                  label: 'Ready',
                  value: 'READY',
                  selected: statusFilter,
                  onSelected: () => ref
                      .read(kotStatusFilterProvider.notifier)
                      .select('READY'),
                ),
                const SizedBox(width: 8),
                _KotFilterChip(
                  label: 'Completed',
                  value: 'COMPLETED',
                  selected: statusFilter,
                  onSelected: () => ref
                      .read(kotStatusFilterProvider.notifier)
                      .select('COMPLETED'),
                ),
              ],
            ),
          ),
        ),

        // ── KOT tickets grid ────────────────────────────────────
        Expanded(
          child: ticketsAsync.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.error_outline, size: 48, color: colorScheme.error),
                  const SizedBox(height: 12),
                  Text(e.toString(), style: textTheme.bodyMedium),
                  const SizedBox(height: 12),
                  FilledButton.tonal(
                    onPressed: () => ref.invalidate(kitchenOrdersListProvider),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
            data: (tickets) {
              // Apply local filter
              final filtered = statusFilter == null
                  ? tickets
                  : tickets
                        .where((t) => _ticketFilterStatus(t) == statusFilter)
                        .toList();

              if (filtered.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.restaurant_menu,
                        size: 64,
                        color: colorScheme.onSurfaceVariant.withValues(
                          alpha: 0.35,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'No kitchen orders',
                        style: textTheme.bodyLarge?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Orders sent to kitchen will appear here',
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                );
              }

              return GridView.builder(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 360,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.75,
                ),
                itemCount: filtered.length,
                itemBuilder: (context, index) =>
                    _KotCard(ticket: filtered[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// KOT Card
// ---------------------------------------------------------------------------

class _KotCard extends ConsumerWidget {
  final KitchenOrderTicket ticket;

  const _KotCard({required this.ticket});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final ops = ref.watch(kotOperationsProvider);
    final statusColor = _statusColor(ticket.status, colorScheme);
    final dateStr = ticket.createdAt != null
        ? DateFormat('hh:mm a').format(ticket.createdAt!.toLocal())
        : '';

    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(16),
        border: Border(top: BorderSide(color: statusColor, width: 4)),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.06),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticket.kotNumber > 0
                            ? 'KOT #${ticket.kotNumber}'
                            : '#${ticket.orderId.substring(0, 8)}',
                        style: textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          if (ticket.kitchenSection != null &&
                              ticket.kitchenSection!.isNotEmpty) ...[
                            Icon(
                              Icons.kitchen,
                              size: 14,
                              color: colorScheme.onSurfaceVariant,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              ticket.kitchenSection!,
                              style: textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                            const SizedBox(width: 8),
                          ],
                          Text(
                            dateStr,
                            style: textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurfaceVariant.withValues(
                                alpha: 0.7,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    _displayStatusLabel(ticket.status),
                    style: textTheme.labelSmall?.copyWith(
                      color: statusColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Divider(height: 1, color: colorScheme.outlineVariant),

          // Items list
          Expanded(
            child: ticket.items.isEmpty
                ? Center(
                    child: Text(
                      'No items',
                      style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  )
                : ListView.separated(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    itemCount: ticket.items.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 4),
                    itemBuilder: (context, index) {
                      final item = ticket.items[index];
                      return Row(
                        children: [
                          Container(
                            width: 28,
                            height: 28,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: colorScheme.surfaceContainerHighest,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              '${item.quantity}x',
                              style: textTheme.labelSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              item.productName,
                              style: textTheme.bodySmall,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          if (item.notes != null && item.notes!.isNotEmpty)
                            Icon(
                              Icons.sticky_note_2_outlined,
                              size: 14,
                              color: colorScheme.onSurfaceVariant,
                            ),
                        ],
                      );
                    },
                  ),
          ),

          Divider(height: 1, color: colorScheme.outlineVariant),

          // Action buttons
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                if (ticket.status.toUpperCase() == 'PENDING')
                  Expanded(
                    child: FilledButton.icon(
                      onPressed: ops.isLoading
                          ? null
                          : () async {
                              final success = await ref
                                  .read(kotOperationsProvider.notifier)
                                  .updateStatus(ticket.id, 'preparing');
                              if (!success && context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Failed to start preparing'),
                                  ),
                                );
                              }
                            },
                      icon: const Icon(Icons.local_fire_department, size: 18),
                      label: const Text('Start Preparing'),
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                if (ticket.status.toUpperCase() == 'PREPARING')
                  Expanded(
                    child: FilledButton.icon(
                      onPressed: ops.isLoading
                          ? null
                          : () async {
                              final success = await ref
                                  .read(kotOperationsProvider.notifier)
                                  .updateStatus(ticket.id, 'ready');
                              if (!success && context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Failed to mark ready'),
                                  ),
                                );
                              }
                            },
                      icon: const Icon(Icons.check_circle_outline, size: 18),
                      label: const Text('Mark Ready'),
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                if (ticket.status.toUpperCase() == 'READY')
                  Expanded(
                    child: FilledButton.icon(
                      onPressed: ops.isLoading
                          ? null
                          : () async {
                              final success = await ref
                                  .read(kotOperationsProvider.notifier)
                                  .updateStatus(ticket.id, 'served');
                              if (!success && context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Failed to mark completed'),
                                  ),
                                );
                              }
                            },
                      icon: const Icon(Icons.task_alt, size: 18),
                      label: const Text('Mark Completed'),
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                if (ticket.status.toUpperCase() == 'SERVED')
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done_all,
                            size: 18,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            'Completed',
                            style: textTheme.labelLarge?.copyWith(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _statusColor(String status, ColorScheme cs) {
    return switch (status.toUpperCase()) {
      'PENDING' => Colors.orange,
      'PREPARING' => Colors.amber.shade700,
      'READY' => Colors.green,
      'SERVED' => Colors.grey,
      _ => cs.onSurfaceVariant,
    };
  }

  String _displayStatusLabel(String rawStatus) {
    final s = rawStatus.toUpperCase();
    if (s == 'SERVED') return 'COMPLETED';
    return s;
  }
}

String _ticketFilterStatus(KitchenOrderTicket ticket) {
  final s = ticket.status.toUpperCase();
  return s == 'SERVED' ? 'COMPLETED' : s;
}

// ---------------------------------------------------------------------------
// Filter chip
// ---------------------------------------------------------------------------

class _KotFilterChip extends StatelessWidget {
  final String label;
  final String? value;
  final String? selected;
  final VoidCallback onSelected;

  const _KotFilterChip({
    required this.label,
    required this.value,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = selected == value;
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (_) => onSelected(),
      selectedColor: Theme.of(context).colorScheme.primaryContainer,
      checkmarkColor: Theme.of(context).colorScheme.onPrimaryContainer,
      labelStyle: TextStyle(
        color: isSelected
            ? Theme.of(context).colorScheme.onPrimaryContainer
            : Theme.of(context).colorScheme.onSurfaceVariant,
        fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
      ),
      side: BorderSide(
        color: isSelected
            ? Colors.transparent
            : Theme.of(context).colorScheme.outlineVariant,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}
