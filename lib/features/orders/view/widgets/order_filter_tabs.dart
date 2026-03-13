import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../viewmodel/orders_viewmodel.dart';

/// Filter tabs with two rows: status filters + order type filters.
class OrderFilterTabs extends ConsumerWidget {
  const OrderFilterTabs({super.key});

  static const _statusFilters = <String?, String>{
    null: 'All',
    'open': 'Open',
    'in_kitchen': 'In Kitchen',
    'ready': 'Ready',
    'paid': 'Paid',
    'cancelled': 'Cancelled',
  };

  static const _typeFilters = <String?, String>{
    null: 'All Types',
    'dine_in': 'Dine In',
    'take_away': 'Takeaway',
    'delivery': 'Delivery',
  };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedStatus = ref.watch(orderStatusFilterProvider);
    final selectedType = ref.watch(orderTypeFilterProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Status filters
        SizedBox(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: _statusFilters.entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FilterChip(
                  label: Text(entry.value),
                  selected: selectedStatus == entry.key,
                  onSelected: (_) => ref
                      .read(orderStatusFilterProvider.notifier)
                      .select(entry.key),
                  selectedColor: Theme.of(context).colorScheme.primaryContainer,
                  checkmarkColor: Theme.of(
                    context,
                  ).colorScheme.onPrimaryContainer,
                  labelStyle: TextStyle(
                    color: selectedStatus == entry.key
                        ? Theme.of(context).colorScheme.onPrimaryContainer
                        : Theme.of(context).colorScheme.onSurfaceVariant,
                    fontWeight: selectedStatus == entry.key
                        ? FontWeight.w600
                        : FontWeight.normal,
                  ),
                  side: BorderSide(
                    color: selectedStatus == entry.key
                        ? Colors.transparent
                        : Theme.of(context).colorScheme.outlineVariant,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 4),
        // Type filters
        SizedBox(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: _typeFilters.entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FilterChip(
                  label: Text(entry.value),
                  selected: selectedType == entry.key,
                  onSelected: (_) => ref
                      .read(orderTypeFilterProvider.notifier)
                      .select(entry.key),
                  selectedColor: Theme.of(
                    context,
                  ).colorScheme.secondaryContainer,
                  checkmarkColor: Theme.of(
                    context,
                  ).colorScheme.onSecondaryContainer,
                  labelStyle: TextStyle(
                    color: selectedType == entry.key
                        ? Theme.of(context).colorScheme.onSecondaryContainer
                        : Theme.of(context).colorScheme.onSurfaceVariant,
                    fontWeight: selectedType == entry.key
                        ? FontWeight.w600
                        : FontWeight.normal,
                  ),
                  side: BorderSide(
                    color: selectedType == entry.key
                        ? Colors.transparent
                        : Theme.of(context).colorScheme.outlineVariant,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
