import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../home/viewmodel/store_viewmodel.dart';
import '../../model/inventory_models.dart';
import '../../viewmodel/inventory_viewmodel.dart';

// =============================================================================
// InventoryPage – 7-tab shell
// =============================================================================

class InventoryPage extends ConsumerStatefulWidget {
  const InventoryPage({super.key});

  @override
  ConsumerState<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends ConsumerState<InventoryPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabCtrl;

  static const _tabs = [
    Tab(text: 'Units'),
    Tab(text: 'Locations'),
    Tab(text: 'Items'),
    Tab(text: 'Stock Levels'),
    Tab(text: 'Recipes'),
    Tab(text: 'Transfers'),
    Tab(text: 'Out Of Stock'),
  ];

  @override
  void initState() {
    super.initState();
    _tabCtrl = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Inventory',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Spacer(),
              _buildHeaderActions(),
            ],
          ),
          const SizedBox(height: 16),
          TabBar(controller: _tabCtrl, isScrollable: true, tabs: _tabs),
          const SizedBox(height: 16),
          Expanded(
            child: TabBarView(
              controller: _tabCtrl,
              children: const [
                _UnitsTab(),
                _LocationsTab(),
                _ItemsTab(),
                _StockLevelsTab(),
                _RecipesTab(),
                _TransfersTab(),
                _OutOfStockTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderActions() {
    return AnimatedBuilder(
      animation: _tabCtrl,
      builder: (context, _) {
        switch (_tabCtrl.index) {
          case 0:
            return FilledButton.icon(
              onPressed: () => _show(context, const _CreateUnitDialog()),
              icon: const Icon(Icons.add),
              label: const Text('Add Unit'),
            );
          case 1:
            return FilledButton.icon(
              onPressed: () => _show(context, const _CreateLocationDialog()),
              icon: const Icon(Icons.add),
              label: const Text('Add Location'),
            );
          case 2:
            return Row(
              children: [
                OutlinedButton.icon(
                  onPressed: () => _show(context, const _AdjustStockDialog()),
                  icon: const Icon(Icons.tune),
                  label: const Text('Adjust Stock'),
                ),
                const SizedBox(width: 12),
                FilledButton.icon(
                  onPressed: () =>
                      _show(context, const _CreateInventoryItemDialog()),
                  icon: const Icon(Icons.add),
                  label: const Text('New Item'),
                ),
              ],
            );
          case 4:
            return FilledButton.icon(
              onPressed: () => _show(context, const _CreateRecipeDialog()),
              icon: const Icon(Icons.add),
              label: const Text('Add Recipe'),
            );
          case 5:
            return FilledButton.icon(
              onPressed: () => _show(context, const _CreateTransferDialog()),
              icon: const Icon(Icons.swap_horiz),
              label: const Text('New Transfer'),
            );
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }

  void _show(BuildContext context, Widget dialog) =>
      showDialog(context: context, builder: (_) => dialog);
}

// =============================================================================
// Shared helpers
// =============================================================================

Widget _buildStatusBadge(bool isActive) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(
      color: isActive
          ? Colors.green.withValues(alpha: 0.12)
          : Colors.red.withValues(alpha: 0.12),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Text(
      isActive ? 'Active' : 'Inactive',
      style: TextStyle(
        fontSize: 12,
        color: isActive ? Colors.green : Colors.red,
      ),
    ),
  );
}

Widget _buildCardTable({
  required BuildContext context,
  required List<DataColumn> columns,
  required List<DataRow> rows,
}) {
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
          columns: columns,
          rows: rows,
        ),
      ),
    ),
  );
}

String _fmt(DateTime? dt) =>
    dt == null ? '---' : DateFormat('dd/MM/yyyy').format(dt);

List<Widget> _dialogActions({
  required bool isLoading,
  required VoidCallback onCancel,
  required VoidCallback onSubmit,
  String submitLabel = 'Save',
}) {
  return [
    TextButton(
      onPressed: isLoading ? null : onCancel,
      child: const Text('Cancel'),
    ),
    FilledButton(
      onPressed: isLoading ? null : onSubmit,
      child: isLoading
          ? const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2),
            )
          : Text(submitLabel),
    ),
  ];
}

// =============================================================================
// Error/Retry widget
// =============================================================================

class _ErrorRetry extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;
  const _ErrorRetry({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Error: $message',
            style: TextStyle(color: Theme.of(context).colorScheme.error),
          ),
          const SizedBox(height: 12),
          OutlinedButton(onPressed: onRetry, child: const Text('Retry')),
        ],
      ),
    );
  }
}

// =============================================================================
// 1. Units Tab
// =============================================================================

class _UnitsTab extends ConsumerWidget {
  const _UnitsTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(inventoryUnitListProvider);
    return async.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => _ErrorRetry(
        message: e.toString(),
        onRetry: () => ref.invalidate(inventoryUnitListProvider),
      ),
      data: (units) {
        if (units.isEmpty) {
          return const Center(
            child: Text('No units yet. Add your first unit.'),
          );
        }
        return _buildCardTable(
          context: context,
          columns: const [
            DataColumn(label: Text('Unit Name')),
            DataColumn(label: Text('Symbol')),
            DataColumn(label: Text('Conversion Factor'), numeric: true),
            DataColumn(label: Text('Actions')),
          ],
          rows: units
              .map(
                (u) => DataRow(
                  cells: [
                    DataCell(
                      Text(
                        u.name,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    DataCell(Text(u.abbreviation)),
                    DataCell(Text(u.conversionFactor.toString())),
                    DataCell(
                      IconButton(
                        icon: const Icon(Icons.edit_outlined, size: 20),
                        tooltip: 'Edit',
                        onPressed: () => showDialog(
                          context: context,
                          builder: (_) => _EditUnitDialog(unit: u),
                        ),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        );
      },
    );
  }
}

// =============================================================================
// 2. Locations Tab
// =============================================================================

class _LocationsTab extends ConsumerWidget {
  const _LocationsTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(inventoryLocationListProvider);
    return async.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => _ErrorRetry(
        message: e.toString(),
        onRetry: () => ref.invalidate(inventoryLocationListProvider),
      ),
      data: (locations) {
        if (locations.isEmpty) {
          return const Center(
            child: Text('No locations yet. Add your first location.'),
          );
        }
        return _buildCardTable(
          context: context,
          columns: const [
            DataColumn(label: Text('Location Name')),
            DataColumn(label: Text('Description')),
            DataColumn(label: Text('Status')),
            DataColumn(label: Text('Created')),
            DataColumn(label: Text('Actions')),
          ],
          rows: locations
              .map(
                (l) => DataRow(
                  cells: [
                    DataCell(
                      Text(
                        l.name,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    DataCell(Text(l.description ?? '---')),
                    DataCell(_buildStatusBadge(l.isActive)),
                    DataCell(Text(_fmt(l.createdAt))),
                    DataCell(
                      IconButton(
                        icon: const Icon(Icons.edit_outlined, size: 20),
                        tooltip: 'Edit',
                        onPressed: () => showDialog(
                          context: context,
                          builder: (_) => _EditLocationDialog(location: l),
                        ),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        );
      },
    );
  }
}

// =============================================================================
// 3. Items Tab
// =============================================================================

class _ItemsTab extends ConsumerWidget {
  const _ItemsTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemsAsync = ref.watch(inventoryItemListProvider);
    final unitsAsync = ref.watch(inventoryUnitListProvider);

    return itemsAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => _ErrorRetry(
        message: e.toString(),
        onRetry: () => ref.read(inventoryItemListProvider.notifier).refresh(),
      ),
      data: (items) {
        if (items.isEmpty) {
          return const Center(child: Text('No inventory items yet.'));
        }
        final units = unitsAsync.asData?.value ?? [];
        return _ItemsDataTable(items: items, units: units);
      },
    );
  }
}

class _ItemsDataTable extends ConsumerWidget {
  final List<InventoryItem> items;
  final List<InventoryUnit> units;
  const _ItemsDataTable({required this.items, required this.units});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              DataColumn(label: Text('Item Name')),
              DataColumn(label: Text('SKU')),
              DataColumn(label: Text('Category')),
              DataColumn(label: Text('Unit')),
              DataColumn(label: Text('Min Stock'), numeric: true),
              DataColumn(label: Text('Avg Cost'), numeric: true),
              DataColumn(label: Text('Availability')),
              DataColumn(label: Text('Actions')),
            ],
            rows: items.map((item) {
              final unitName =
                  units
                      .where((u) => u.id == item.unitId)
                      .map((u) => u.abbreviation)
                      .firstOrNull ??
                  item.unitId;
              return DataRow(
                cells: [
                  DataCell(
                    Text(
                      item.name,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  DataCell(Text(item.sku ?? '---')),
                  DataCell(Text(item.category ?? '---')),
                  DataCell(Text(unitName)),
                  DataCell(Text(item.minStock.toString())),
                  DataCell(Text(item.averageCost?.toStringAsFixed(2) ?? '---')),
                  DataCell(
                    Switch(
                      value: item.isActive,
                      onChanged: (val) async {
                        final success = await ref
                            .read(toggleItemAvailabilityActionProvider.notifier)
                            .toggle(item.id, val);
                        if (!success && context.mounted) {
                          final err = ref
                              .read(toggleItemAvailabilityActionProvider)
                              .error;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                err?.toString() ?? 'Failed to update',
                              ),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  DataCell(
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit_outlined, size: 20),
                          tooltip: 'Edit',
                          onPressed: () => showDialog(
                            context: context,
                            builder: (_) =>
                                _EditInventoryItemDialog(item: item),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.tune, size: 20),
                          tooltip: 'Adjust Stock',
                          onPressed: () => showDialog(
                            context: context,
                            builder: (_) =>
                                _AdjustStockDialog(preselectedItemId: item.id),
                          ),
                        ),
                      ],
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
}

// =============================================================================
// 4. Stock Levels Tab
// =============================================================================

class _StockLevelsTab extends ConsumerWidget {
  const _StockLevelsTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stockAsync = ref.watch(stockLevelListProvider);
    final itemsAsync = ref.watch(inventoryItemListProvider);
    final locationsAsync = ref.watch(inventoryLocationListProvider);
    final unitsAsync = ref.watch(inventoryUnitListProvider);

    return stockAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => _ErrorRetry(
        message: e.toString(),
        onRetry: () => ref.read(stockLevelListProvider.notifier).refresh(),
      ),
      data: (levels) {
        if (levels.isEmpty) {
          return const Center(child: Text('No stock data yet.'));
        }
        final items = itemsAsync.asData?.value ?? [];
        final locations = locationsAsync.asData?.value ?? [];
        final units = unitsAsync.asData?.value ?? [];

        return _buildCardTable(
          context: context,
          columns: const [
            DataColumn(label: Text('Item')),
            DataColumn(label: Text('Location')),
            DataColumn(label: Text('Quantity'), numeric: true),
            DataColumn(label: Text('Unit')),
            DataColumn(label: Text('Last Updated')),
          ],
          rows: levels.map((sl) {
            final item = items.where((i) => i.id == sl.itemId).firstOrNull;
            final location = locations
                .where((l) => l.id == sl.locationId)
                .firstOrNull;
            final unit = item != null
                ? units.where((u) => u.id == item.unitId).firstOrNull
                : null;
            return DataRow(
              cells: [
                DataCell(
                  Text(
                    item?.name ?? sl.itemId,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                DataCell(Text(location?.name ?? sl.locationId)),
                DataCell(Text(sl.quantity.toString())),
                DataCell(Text(unit?.abbreviation ?? '---')),
                DataCell(Text(_fmt(sl.updatedAt))),
              ],
            );
          }).toList(),
        );
      },
    );
  }
}

// =============================================================================
// 5. Recipes Tab
// =============================================================================

class _RecipesTab extends ConsumerStatefulWidget {
  const _RecipesTab();

  @override
  ConsumerState<_RecipesTab> createState() => _RecipesTabState();
}

class _RecipesTabState extends ConsumerState<_RecipesTab> {
  final List<Recipe> _recipes = [];

  @override
  Widget build(BuildContext context) {
    if (_recipes.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('No recipes yet. Create a recipe to get started.'),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: _showCreateDialog,
              icon: const Icon(Icons.add),
              label: const Text('Create Recipe'),
            ),
          ],
        ),
      );
    }

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
              DataColumn(label: Text('Recipe Name')),
              DataColumn(label: Text('Description')),
              DataColumn(label: Text('Ingredients'), numeric: true),
              DataColumn(label: Text('Created')),
              DataColumn(label: Text('Actions')),
            ],
            rows: _recipes
                .map(
                  (r) => DataRow(
                    cells: [
                      DataCell(
                        Text(
                          r.name,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ),
                      DataCell(Text(r.description ?? '---')),
                      DataCell(Text(r.lines.length.toString())),
                      DataCell(Text(_fmt(r.createdAt))),
                      DataCell(
                        IconButton(
                          icon: const Icon(Icons.visibility_outlined, size: 20),
                          tooltip: 'View / Edit',
                          onPressed: () => showDialog(
                            context: context,
                            builder: (_) => _ViewEditRecipeDialog(recipe: r),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  void _showCreateDialog() {
    showDialog(
      context: context,
      builder: (_) => _CreateRecipeDialog(
        onCreated: (recipe) => setState(() => _recipes.insert(0, recipe)),
      ),
    );
  }
}

// =============================================================================
// 6. Transfers Tab
// =============================================================================

class _TransfersTab extends ConsumerWidget {
  const _TransfersTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transfersAsync = ref.watch(transferListProvider);

    return transfersAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => _ErrorRetry(
        message: e.toString(),
        onRetry: () => ref.read(transferListProvider.notifier).refresh(),
      ),
      data: (transfers) {
        if (transfers.isEmpty) {
          return const Center(
            child: Text('No transfers yet. Create a transfer to get started.'),
          );
        }

        return _buildCardTable(
          context: context,
          columns: const [
            DataColumn(label: Text('Transfer ID')),
            DataColumn(label: Text('From Location')),
            DataColumn(label: Text('To Location')),
            DataColumn(label: Text('Item')),
            DataColumn(label: Text('Quantity'), numeric: true),
            DataColumn(label: Text('Status')),
            DataColumn(label: Text('Created')),
            DataColumn(label: Text('Actions')),
          ],
          rows: transfers
              .map(
                (t) => DataRow(
                  cells: [
                    DataCell(
                      Text(
                        t.id.length > 8 ? '${t.id.substring(0, 8)}...' : t.id,
                        style: const TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 12,
                        ),
                      ),
                    ),
                    DataCell(Text(t.fromLocationName ?? t.fromLocationId)),
                    DataCell(Text(t.toLocationName ?? t.toLocationId)),
                    DataCell(Text(t.itemName ?? t.itemId)),
                    DataCell(Text(t.quantity.toString())),
                    DataCell(_TransferStatusBadge(status: t.status)),
                    DataCell(Text(_fmt(t.createdAt))),
                    DataCell(
                      IconButton(
                        icon: const Icon(Icons.update, size: 20),
                        tooltip: 'Update Status',
                        onPressed: () => showDialog(
                          context: context,
                          builder: (_) =>
                              _UpdateTransferStatusDialog(transferId: t.id),
                        ),
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        );
      },
    );
  }
}

class _TransferStatusBadge extends StatelessWidget {
  final String status;
  const _TransferStatusBadge({required this.status});

  @override
  Widget build(BuildContext context) {
    Color color;
    switch (status.toLowerCase()) {
      case 'completed':
        color = Colors.green;
        break;
      case 'cancelled':
        color = Colors.red;
        break;
      case 'in_transit':
        color = Colors.orange;
        break;
      default:
        color = Colors.blue;
    }
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        status[0].toUpperCase() + status.substring(1).replaceAll('_', ' '),
        style: TextStyle(fontSize: 12, color: color),
      ),
    );
  }
}

// =============================================================================
// 7. Out Of Stock Tab
// =============================================================================

class _OutOfStockTab extends ConsumerWidget {
  const _OutOfStockTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(outOfStockListProvider);
    return async.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => _ErrorRetry(
        message: e.toString(),
        onRetry: () => ref.read(outOfStockListProvider.notifier).refresh(),
      ),
      data: (items) {
        if (items.isEmpty) {
          return const Center(
            child: Text('No out-of-stock items. All items are available.'),
          );
        }
        return _buildCardTable(
          context: context,
          columns: const [
            DataColumn(label: Text('Item')),
            DataColumn(label: Text('SKU')),
            DataColumn(label: Text('Category')),
            DataColumn(label: Text('Status')),
          ],
          rows: items
              .map(
                (oos) => DataRow(
                  cells: [
                    DataCell(
                      Text(
                        oos.name,
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    DataCell(Text(oos.sku ?? '---')),
                    DataCell(Text(oos.category ?? '---')),
                    DataCell(Text(oos.isActive ? 'Active' : 'Inactive')),
                  ],
                ),
              )
              .toList(),
        );
      },
    );
  }
}

// =============================================================================
// Create Unit Dialog
// =============================================================================

class _CreateUnitDialog extends ConsumerStatefulWidget {
  const _CreateUnitDialog();

  @override
  ConsumerState<_CreateUnitDialog> createState() => _CreateUnitDialogState();
}

class _CreateUnitDialogState extends ConsumerState<_CreateUnitDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _abbrevCtrl = TextEditingController();
  final _factorCtrl = TextEditingController(text: '1.0');

  @override
  void dispose() {
    _nameCtrl.dispose();
    _abbrevCtrl.dispose();
    _factorCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    final store = ref.read(selectedStoreProvider);
    if (store == null) return;

    final success = await ref
        .read(createInventoryUnitActionProvider.notifier)
        .createUnit(
          InventoryUnitCreate(
            storeId: store.id,
            name: _nameCtrl.text.trim(),
            abbreviation: _abbrevCtrl.text.trim(),
            conversionFactor: double.tryParse(_factorCtrl.text) ?? 1.0,
          ),
        );
    if (success && mounted) {
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Unit created successfully')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(createInventoryUnitActionProvider);
    final isLoading = actionState is AsyncLoading;

    return AlertDialog(
      title: const Text('Add Unit'),
      content: SizedBox(
        width: 400,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameCtrl,
                decoration: const InputDecoration(
                  labelText: 'Unit Name *',
                  border: OutlineInputBorder(),
                ),
                validator: (v) =>
                    (v == null || v.trim().isEmpty) ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _abbrevCtrl,
                decoration: const InputDecoration(
                  labelText: 'Symbol / Abbreviation *',
                  border: OutlineInputBorder(),
                ),
                validator: (v) =>
                    (v == null || v.trim().isEmpty) ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _factorCtrl,
                decoration: const InputDecoration(
                  labelText: 'Conversion Factor',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              if (actionState is AsyncError) ...[
                const SizedBox(height: 12),
                Text(
                  actionState.error.toString(),
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ],
            ],
          ),
        ),
      ),
      actions: _dialogActions(
        isLoading: isLoading,
        onCancel: () => Navigator.of(context).pop(),
        onSubmit: _submit,
        submitLabel: 'Create',
      ),
    );
  }
}

// =============================================================================
// Edit Unit Dialog
// =============================================================================

class _EditUnitDialog extends ConsumerStatefulWidget {
  final InventoryUnit unit;
  const _EditUnitDialog({required this.unit});

  @override
  ConsumerState<_EditUnitDialog> createState() => _EditUnitDialogState();
}

class _EditUnitDialogState extends ConsumerState<_EditUnitDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameCtrl;
  late final TextEditingController _abbrevCtrl;
  late final TextEditingController _factorCtrl;

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: widget.unit.name);
    _abbrevCtrl = TextEditingController(text: widget.unit.abbreviation);
    _factorCtrl = TextEditingController(
      text: widget.unit.conversionFactor.toString(),
    );
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _abbrevCtrl.dispose();
    _factorCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    final store = ref.read(selectedStoreProvider);
    if (store == null) return;

    final success = await ref
        .read(createInventoryUnitActionProvider.notifier)
        .createUnit(
          InventoryUnitCreate(
            storeId: store.id,
            name: _nameCtrl.text.trim(),
            abbreviation: _abbrevCtrl.text.trim(),
            conversionFactor: double.tryParse(_factorCtrl.text) ?? 1.0,
          ),
        );
    if (success && mounted) {
      Navigator.of(context).pop();
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Unit updated')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(createInventoryUnitActionProvider);
    final isLoading = actionState is AsyncLoading;

    return AlertDialog(
      title: const Text('Edit Unit'),
      content: SizedBox(
        width: 400,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameCtrl,
                decoration: const InputDecoration(
                  labelText: 'Unit Name *',
                  border: OutlineInputBorder(),
                ),
                validator: (v) =>
                    (v == null || v.trim().isEmpty) ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _abbrevCtrl,
                decoration: const InputDecoration(
                  labelText: 'Symbol / Abbreviation *',
                  border: OutlineInputBorder(),
                ),
                validator: (v) =>
                    (v == null || v.trim().isEmpty) ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _factorCtrl,
                decoration: const InputDecoration(
                  labelText: 'Conversion Factor',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              if (actionState is AsyncError) ...[
                const SizedBox(height: 12),
                Text(
                  actionState.error.toString(),
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ],
            ],
          ),
        ),
      ),
      actions: _dialogActions(
        isLoading: isLoading,
        onCancel: () => Navigator.of(context).pop(),
        onSubmit: _submit,
      ),
    );
  }
}

// =============================================================================
// Create Location Dialog
// =============================================================================

class _CreateLocationDialog extends ConsumerStatefulWidget {
  const _CreateLocationDialog();

  @override
  ConsumerState<_CreateLocationDialog> createState() =>
      _CreateLocationDialogState();
}

class _CreateLocationDialogState extends ConsumerState<_CreateLocationDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _descCtrl = TextEditingController();
  bool _isActive = true;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _descCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    final store = ref.read(selectedStoreProvider);
    if (store == null) return;

    final success = await ref
        .read(createInventoryLocationActionProvider.notifier)
        .createLocation(
          InventoryLocationCreate(
            storeId: store.id,
            name: _nameCtrl.text.trim(),
            description: _descCtrl.text.trim().isEmpty
                ? null
                : _descCtrl.text.trim(),
            isActive: _isActive,
          ),
        );
    if (success && mounted) {
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Location created successfully')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(createInventoryLocationActionProvider);
    final isLoading = actionState is AsyncLoading;

    return AlertDialog(
      title: const Text('Add Location'),
      content: SizedBox(
        width: 400,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameCtrl,
                decoration: const InputDecoration(
                  labelText: 'Location Name *',
                  border: OutlineInputBorder(),
                ),
                validator: (v) =>
                    (v == null || v.trim().isEmpty) ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _descCtrl,
                decoration: const InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                ),
                maxLines: 2,
              ),
              const SizedBox(height: 8),
              SwitchListTile(
                title: const Text('Active'),
                value: _isActive,
                onChanged: (v) => setState(() => _isActive = v),
                contentPadding: EdgeInsets.zero,
              ),
              if (actionState is AsyncError) ...[
                const SizedBox(height: 12),
                Text(
                  actionState.error.toString(),
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ],
            ],
          ),
        ),
      ),
      actions: _dialogActions(
        isLoading: isLoading,
        onCancel: () => Navigator.of(context).pop(),
        onSubmit: _submit,
        submitLabel: 'Create',
      ),
    );
  }
}

// =============================================================================
// Edit Location Dialog
// =============================================================================

class _EditLocationDialog extends ConsumerStatefulWidget {
  final InventoryLocation location;
  const _EditLocationDialog({required this.location});

  @override
  ConsumerState<_EditLocationDialog> createState() =>
      _EditLocationDialogState();
}

class _EditLocationDialogState extends ConsumerState<_EditLocationDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameCtrl;
  late final TextEditingController _descCtrl;
  late bool _isActive;

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: widget.location.name);
    _descCtrl = TextEditingController(text: widget.location.description ?? '');
    _isActive = widget.location.isActive;
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _descCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    final store = ref.read(selectedStoreProvider);
    if (store == null) return;

    final success = await ref
        .read(createInventoryLocationActionProvider.notifier)
        .createLocation(
          InventoryLocationCreate(
            storeId: store.id,
            name: _nameCtrl.text.trim(),
            description: _descCtrl.text.trim().isEmpty
                ? null
                : _descCtrl.text.trim(),
            isActive: _isActive,
          ),
        );
    if (success && mounted) {
      Navigator.of(context).pop();
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Location updated')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(createInventoryLocationActionProvider);
    final isLoading = actionState is AsyncLoading;

    return AlertDialog(
      title: const Text('Edit Location'),
      content: SizedBox(
        width: 400,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _nameCtrl,
                decoration: const InputDecoration(
                  labelText: 'Location Name *',
                  border: OutlineInputBorder(),
                ),
                validator: (v) =>
                    (v == null || v.trim().isEmpty) ? 'Required' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _descCtrl,
                decoration: const InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                ),
                maxLines: 2,
              ),
              const SizedBox(height: 8),
              SwitchListTile(
                title: const Text('Active'),
                value: _isActive,
                onChanged: (v) => setState(() => _isActive = v),
                contentPadding: EdgeInsets.zero,
              ),
              if (actionState is AsyncError) ...[
                const SizedBox(height: 12),
                Text(
                  actionState.error.toString(),
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              ],
            ],
          ),
        ),
      ),
      actions: _dialogActions(
        isLoading: isLoading,
        onCancel: () => Navigator.of(context).pop(),
        onSubmit: _submit,
      ),
    );
  }
}

// =============================================================================
// Create Inventory Item Dialog
// =============================================================================

class _CreateInventoryItemDialog extends ConsumerStatefulWidget {
  const _CreateInventoryItemDialog();

  @override
  ConsumerState<_CreateInventoryItemDialog> createState() =>
      _CreateInventoryItemDialogState();
}

class _CreateInventoryItemDialogState
    extends ConsumerState<_CreateInventoryItemDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _skuCtrl = TextEditingController();
  final _categoryCtrl = TextEditingController();
  final _minStockCtrl = TextEditingController(text: '0');
  String? _selectedUnitId;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _skuCtrl.dispose();
    _categoryCtrl.dispose();
    _minStockCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    final store = ref.read(selectedStoreProvider);
    if (store == null) return;

    final item = InventoryItemCreate(
      storeId: store.id,
      name: _nameCtrl.text.trim(),
      sku: _skuCtrl.text.trim().isEmpty ? null : _skuCtrl.text.trim(),
      category: _categoryCtrl.text.trim().isEmpty
          ? null
          : _categoryCtrl.text.trim(),
      unitId: _selectedUnitId ?? '',
      minStock: double.tryParse(_minStockCtrl.text) ?? 0,
    );

    final success = await ref
        .read(createInventoryItemActionProvider.notifier)
        .createItem(item);
    if (success && mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(createInventoryItemActionProvider);
    final isLoading = actionState is AsyncLoading;
    final unitsAsync = ref.watch(inventoryUnitListProvider);

    return AlertDialog(
      title: const Text('Create Inventory Item'),
      content: SizedBox(
        width: 420,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _nameCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Item Name *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) =>
                      (v == null || v.trim().isEmpty) ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _skuCtrl,
                        decoration: const InputDecoration(
                          labelText: 'SKU',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: _categoryCtrl,
                        decoration: const InputDecoration(
                          labelText: 'Category',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                unitsAsync.when(
                  loading: () => const LinearProgressIndicator(),
                  error: (_, __) => const Text('Failed to load units'),
                  data: (units) => DropdownButtonFormField<String>(
                    value: _selectedUnitId,
                    decoration: const InputDecoration(
                      labelText: 'Unit *',
                      border: OutlineInputBorder(),
                    ),
                    items: units
                        .map(
                          (u) => DropdownMenuItem(
                            value: u.id,
                            child: Text('${u.name} (${u.abbreviation})'),
                          ),
                        )
                        .toList(),
                    onChanged: (v) => setState(() => _selectedUnitId = v),
                    validator: (v) =>
                        (v == null || v.isEmpty) ? 'Required' : null,
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _minStockCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Minimum Stock',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                if (actionState is AsyncError) ...[
                  const SizedBox(height: 16),
                  Text(
                    actionState.error.toString(),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
      actions: _dialogActions(
        isLoading: isLoading,
        onCancel: () => Navigator.of(context).pop(),
        onSubmit: _submit,
        submitLabel: 'Create',
      ),
    );
  }
}

// =============================================================================
// Edit Inventory Item Dialog
// =============================================================================

class _EditInventoryItemDialog extends ConsumerStatefulWidget {
  final InventoryItem item;
  const _EditInventoryItemDialog({required this.item});

  @override
  ConsumerState<_EditInventoryItemDialog> createState() =>
      _EditInventoryItemDialogState();
}

class _EditInventoryItemDialogState
    extends ConsumerState<_EditInventoryItemDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameCtrl;
  late final TextEditingController _skuCtrl;
  late final TextEditingController _categoryCtrl;
  late final TextEditingController _minStockCtrl;
  late bool _isActive;

  @override
  void initState() {
    super.initState();
    final i = widget.item;
    _nameCtrl = TextEditingController(text: i.name);
    _skuCtrl = TextEditingController(text: i.sku ?? '');
    _categoryCtrl = TextEditingController(text: i.category ?? '');
    _minStockCtrl = TextEditingController(text: i.minStock.toString());
    _isActive = i.isActive;
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _skuCtrl.dispose();
    _categoryCtrl.dispose();
    _minStockCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    final update = InventoryItemUpdate(
      name: _nameCtrl.text.trim(),
      sku: _skuCtrl.text.trim().isEmpty ? null : _skuCtrl.text.trim(),
      category: _categoryCtrl.text.trim().isEmpty
          ? null
          : _categoryCtrl.text.trim(),
      minStock: double.tryParse(_minStockCtrl.text),
      isActive: _isActive,
    );
    final success = await ref
        .read(updateInventoryItemActionProvider.notifier)
        .updateItem(widget.item.id, update);
    if (success && mounted) Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(updateInventoryItemActionProvider);
    final isLoading = actionState is AsyncLoading;

    return AlertDialog(
      title: const Text('Edit Inventory Item'),
      content: SizedBox(
        width: 420,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _nameCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Item Name *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) =>
                      (v == null || v.trim().isEmpty) ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _skuCtrl,
                        decoration: const InputDecoration(
                          labelText: 'SKU',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: TextFormField(
                        controller: _categoryCtrl,
                        decoration: const InputDecoration(
                          labelText: 'Category',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _minStockCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Minimum Stock',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 16),
                SwitchListTile(
                  title: const Text('Active'),
                  value: _isActive,
                  onChanged: (v) => setState(() => _isActive = v),
                  contentPadding: EdgeInsets.zero,
                ),
                if (actionState is AsyncError) ...[
                  const SizedBox(height: 16),
                  Text(
                    actionState.error.toString(),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
      actions: _dialogActions(
        isLoading: isLoading,
        onCancel: () => Navigator.of(context).pop(),
        onSubmit: _submit,
      ),
    );
  }
}

// =============================================================================
// Adjust Stock Dialog
// =============================================================================

class _AdjustStockDialog extends ConsumerStatefulWidget {
  final String? preselectedItemId;
  const _AdjustStockDialog({this.preselectedItemId});

  @override
  ConsumerState<_AdjustStockDialog> createState() => _AdjustStockDialogState();
}

class _AdjustStockDialogState extends ConsumerState<_AdjustStockDialog> {
  final _formKey = GlobalKey<FormState>();
  final _quantityCtrl = TextEditingController();
  final _reasonCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();
  String? _selectedItemId;
  String? _selectedLocationId;

  @override
  void initState() {
    super.initState();
    _selectedItemId = widget.preselectedItemId;
  }

  @override
  void dispose() {
    _quantityCtrl.dispose();
    _reasonCtrl.dispose();
    _notesCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    final store = ref.read(selectedStoreProvider);
    if (store == null) return;

    final adjustment = StockAdjustmentCreate(
      storeId: store.id,
      itemId: _selectedItemId ?? '',
      locationId: _selectedLocationId ?? '',
      quantityChange: double.tryParse(_quantityCtrl.text) ?? 0,
      reason: _reasonCtrl.text.trim(),
      notes: _notesCtrl.text.trim().isEmpty ? null : _notesCtrl.text.trim(),
    );

    final success = await ref
        .read(adjustStockActionProvider.notifier)
        .adjustStock(adjustment);
    if (success && mounted) {
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Stock adjusted successfully')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(adjustStockActionProvider);
    final isLoading = actionState is AsyncLoading;
    final itemsAsync = ref.watch(inventoryItemListProvider);
    final locationsAsync = ref.watch(inventoryLocationListProvider);

    return AlertDialog(
      title: const Text('Adjust Stock'),
      content: SizedBox(
        width: 420,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                itemsAsync.when(
                  loading: () => const LinearProgressIndicator(),
                  error: (_, __) => const Text('Failed to load items'),
                  data: (items) => DropdownButtonFormField<String>(
                    value: _selectedItemId,
                    decoration: const InputDecoration(
                      labelText: 'Item *',
                      border: OutlineInputBorder(),
                    ),
                    items: items
                        .map(
                          (i) => DropdownMenuItem(
                            value: i.id,
                            child: Text(i.name),
                          ),
                        )
                        .toList(),
                    onChanged: (v) => setState(() => _selectedItemId = v),
                    validator: (v) =>
                        (v == null || v.isEmpty) ? 'Required' : null,
                  ),
                ),
                const SizedBox(height: 16),
                locationsAsync.when(
                  loading: () => const LinearProgressIndicator(),
                  error: (_, __) => const Text('Failed to load locations'),
                  data: (locations) => DropdownButtonFormField<String>(
                    value: _selectedLocationId,
                    decoration: const InputDecoration(
                      labelText: 'Location *',
                      border: OutlineInputBorder(),
                    ),
                    items: locations
                        .map(
                          (l) => DropdownMenuItem(
                            value: l.id,
                            child: Text(l.name),
                          ),
                        )
                        .toList(),
                    onChanged: (v) => setState(() => _selectedLocationId = v),
                    validator: (v) =>
                        (v == null || v.isEmpty) ? 'Required' : null,
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _quantityCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Quantity Change *',
                    helperText: 'Use negative for reduction/waste',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    signed: true,
                    decimal: true,
                  ),
                  validator: (v) {
                    if (v == null || v.trim().isEmpty) return 'Required';
                    if (double.tryParse(v) == null) return 'Invalid number';
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _reasonCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Reason *',
                    hintText: 'Increase / Decrease / Waste',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) =>
                      (v == null || v.trim().isEmpty) ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _notesCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Notes',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 2,
                ),
                if (actionState is AsyncError) ...[
                  const SizedBox(height: 16),
                  Text(
                    actionState.error.toString(),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
      actions: _dialogActions(
        isLoading: isLoading,
        onCancel: () => Navigator.of(context).pop(),
        onSubmit: _submit,
        submitLabel: 'Submit',
      ),
    );
  }
}

// =============================================================================
// Create Recipe Dialog
// =============================================================================

class _CreateRecipeDialog extends ConsumerStatefulWidget {
  final void Function(Recipe recipe)? onCreated;
  const _CreateRecipeDialog({this.onCreated});

  @override
  ConsumerState<_CreateRecipeDialog> createState() =>
      _CreateRecipeDialogState();
}

class _CreateRecipeDialogState extends ConsumerState<_CreateRecipeDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _descCtrl = TextEditingController();
  final List<_IngredientEntry> _ingredients = [];

  @override
  void dispose() {
    _nameCtrl.dispose();
    _descCtrl.dispose();
    for (final e in _ingredients) {
      e.dispose();
    }
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    final ingredients = _ingredients
        .where((e) => e.itemId != null && e.quantityCtrl.text.isNotEmpty)
        .map(
          (e) => RecipeIngredientCreate(
            ingredientId: e.itemId!,
            quantity: double.tryParse(e.quantityCtrl.text) ?? 0,
          ),
        )
        .toList();

    final store = ref.read(selectedStoreProvider);
    final recipe = await ref
        .read(createRecipeActionProvider.notifier)
        .createRecipe(
          RecipeCreate(
            storeId: store?.id ?? '',
            productId: '',
            name: _nameCtrl.text.trim(),
            description: _descCtrl.text.trim().isEmpty
                ? null
                : _descCtrl.text.trim(),
            lines: ingredients,
          ),
        );

    if (recipe != null && mounted) {
      widget.onCreated?.call(recipe);
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Recipe created successfully')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(createRecipeActionProvider);
    final isLoading = actionState is AsyncLoading;
    final itemsAsync = ref.watch(inventoryItemListProvider);

    return AlertDialog(
      title: const Text('Create Recipe'),
      content: SizedBox(
        width: 560,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _nameCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Recipe Name *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) =>
                      (v == null || v.trim().isEmpty) ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _descCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 2,
                ),
                const SizedBox(height: 16),
                Text(
                  'Ingredients',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 8),
                ..._ingredients.asMap().entries.map((entry) {
                  final idx = entry.key;
                  final e = entry.value;
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: itemsAsync.when(
                            loading: () => const LinearProgressIndicator(),
                            error: (_, __) =>
                                const Text('Failed to load items'),
                            data: (items) => DropdownButtonFormField<String>(
                              value: e.itemId,
                              decoration: const InputDecoration(
                                labelText: 'Item',
                                border: OutlineInputBorder(),
                                isDense: true,
                              ),
                              items: items
                                  .map(
                                    (i) => DropdownMenuItem(
                                      value: i.id,
                                      child: Text(i.name),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (v) => setState(() => e.itemId = v),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            controller: e.quantityCtrl,
                            decoration: const InputDecoration(
                              labelText: 'Qty',
                              border: OutlineInputBorder(),
                              isDense: true,
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            controller: e.notesCtrl,
                            decoration: const InputDecoration(
                              labelText: 'Notes',
                              border: OutlineInputBorder(),
                              isDense: true,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.remove_circle_outline,
                            size: 20,
                          ),
                          onPressed: () =>
                              setState(() => _ingredients.removeAt(idx)),
                        ),
                      ],
                    ),
                  );
                }),
                TextButton.icon(
                  onPressed: () =>
                      setState(() => _ingredients.add(_IngredientEntry())),
                  icon: const Icon(Icons.add, size: 18),
                  label: const Text('Add Ingredient'),
                ),
                if (actionState is AsyncError) ...[
                  const SizedBox(height: 12),
                  Text(
                    actionState.error.toString(),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
      actions: _dialogActions(
        isLoading: isLoading,
        onCancel: () => Navigator.of(context).pop(),
        onSubmit: _submit,
        submitLabel: 'Create',
      ),
    );
  }
}

class _IngredientEntry {
  String? itemId;
  final quantityCtrl = TextEditingController();
  final notesCtrl = TextEditingController();

  void dispose() {
    quantityCtrl.dispose();
    notesCtrl.dispose();
  }
}

// =============================================================================
// View / Edit Recipe Dialog
// =============================================================================

class _ViewEditRecipeDialog extends ConsumerStatefulWidget {
  final Recipe recipe;
  const _ViewEditRecipeDialog({required this.recipe});

  @override
  ConsumerState<_ViewEditRecipeDialog> createState() =>
      _ViewEditRecipeDialogState();
}

class _ViewEditRecipeDialogState extends ConsumerState<_ViewEditRecipeDialog> {
  late final TextEditingController _nameCtrl;
  late final TextEditingController _descCtrl;
  bool _editing = false;

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: widget.recipe.name);
    _descCtrl = TextEditingController(text: widget.recipe.description ?? '');
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _descCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final success = await ref
        .read(updateRecipeActionProvider.notifier)
        .updateRecipe(
          widget.recipe.id,
          RecipeUpdate(
            name: _nameCtrl.text.trim(),
            description: _descCtrl.text.trim().isEmpty
                ? null
                : _descCtrl.text.trim(),
          ),
        );
    if (success && mounted) {
      setState(() => _editing = false);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Recipe updated')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(updateRecipeActionProvider);
    final isLoading = actionState is AsyncLoading;
    final recipe = widget.recipe;

    return AlertDialog(
      title: Row(
        children: [
          Expanded(child: Text(_editing ? 'Edit Recipe' : recipe.name)),
          if (!_editing)
            IconButton(
              icon: const Icon(Icons.edit_outlined),
              onPressed: () => setState(() => _editing = true),
            ),
        ],
      ),
      content: SizedBox(
        width: 520,
        child: SingleChildScrollView(
          child: _editing
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: _nameCtrl,
                      decoration: const InputDecoration(
                        labelText: 'Recipe Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _descCtrl,
                      decoration: const InputDecoration(
                        labelText: 'Description',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 2,
                    ),
                    if (actionState is AsyncError) ...[
                      const SizedBox(height: 12),
                      Text(
                        actionState.error.toString(),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                    ],
                  ],
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (recipe.description != null) ...[
                      Text(recipe.description!),
                      const SizedBox(height: 16),
                    ],
                    Text(
                      'Ingredients',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const SizedBox(height: 8),
                    if (recipe.lines.isEmpty)
                      const Text('No ingredients defined.'),
                    ...recipe.lines.map(
                      (ing) => ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        leading: const Icon(Icons.circle, size: 8),
                        title: Text(
                          '${ing.ingredientId}  x  ${ing.quantity}'
                          '${ing.unitId != null ? " (unit: ${ing.unitId})" : ""}',
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
      actions: _editing
          ? _dialogActions(
              isLoading: isLoading,
              onCancel: () => setState(() => _editing = false),
              onSubmit: _submit,
            )
          : [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Close'),
              ),
            ],
    );
  }
}

// =============================================================================
// Create Transfer Dialog
// =============================================================================

class _CreateTransferDialog extends ConsumerStatefulWidget {
  const _CreateTransferDialog();

  @override
  ConsumerState<_CreateTransferDialog> createState() =>
      _CreateTransferDialogState();
}

class _CreateTransferDialogState extends ConsumerState<_CreateTransferDialog> {
  final _formKey = GlobalKey<FormState>();
  final _quantityCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();
  String? _fromLocationId;
  String? _toLocationId;
  String? _itemId;

  @override
  void dispose() {
    _quantityCtrl.dispose();
    _notesCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;
    final store = ref.read(selectedStoreProvider);
    if (store == null) return;

    final success = await ref
        .read(createTransferActionProvider.notifier)
        .createTransfer(
          TransferCreate(
            storeId: store.id,
            fromLocationId: _fromLocationId ?? '',
            toLocationId: _toLocationId ?? '',
            itemId: _itemId ?? '',
            quantity: double.tryParse(_quantityCtrl.text) ?? 0,
            notes: _notesCtrl.text.trim().isEmpty
                ? null
                : _notesCtrl.text.trim(),
          ),
        );

    if (success && mounted) {
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Transfer created successfully')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(createTransferActionProvider);
    final isLoading = actionState is AsyncLoading;
    final locationsAsync = ref.watch(inventoryLocationListProvider);
    final itemsAsync = ref.watch(inventoryItemListProvider);

    return AlertDialog(
      title: const Text('New Transfer'),
      content: SizedBox(
        width: 480,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                locationsAsync.when(
                  loading: () => const LinearProgressIndicator(),
                  error: (_, __) => const Text('Failed to load locations'),
                  data: (locations) => DropdownButtonFormField<String>(
                    value: _fromLocationId,
                    decoration: const InputDecoration(
                      labelText: 'From Location *',
                      border: OutlineInputBorder(),
                    ),
                    items: locations
                        .map(
                          (l) => DropdownMenuItem(
                            value: l.id,
                            child: Text(l.name),
                          ),
                        )
                        .toList(),
                    onChanged: (v) => setState(() => _fromLocationId = v),
                    validator: (v) =>
                        (v == null || v.isEmpty) ? 'Required' : null,
                  ),
                ),
                const SizedBox(height: 16),
                locationsAsync.when(
                  loading: () => const SizedBox.shrink(),
                  error: (_, __) => const SizedBox.shrink(),
                  data: (locations) => DropdownButtonFormField<String>(
                    value: _toLocationId,
                    decoration: const InputDecoration(
                      labelText: 'To Location *',
                      border: OutlineInputBorder(),
                    ),
                    items: locations
                        .map(
                          (l) => DropdownMenuItem(
                            value: l.id,
                            child: Text(l.name),
                          ),
                        )
                        .toList(),
                    onChanged: (v) => setState(() => _toLocationId = v),
                    validator: (v) {
                      if (v == null || v.isEmpty) return 'Required';
                      if (v == _fromLocationId)
                        return 'Cannot transfer to same location';
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 16),
                itemsAsync.when(
                  loading: () => const LinearProgressIndicator(),
                  error: (_, __) => const Text('Failed to load items'),
                  data: (items) => DropdownButtonFormField<String>(
                    value: _itemId,
                    decoration: const InputDecoration(
                      labelText: 'Item *',
                      border: OutlineInputBorder(),
                    ),
                    items: items
                        .map(
                          (i) => DropdownMenuItem(
                            value: i.id,
                            child: Text(i.name),
                          ),
                        )
                        .toList(),
                    onChanged: (v) => setState(() => _itemId = v),
                    validator: (v) =>
                        (v == null || v.isEmpty) ? 'Required' : null,
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _quantityCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Quantity *',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (v) {
                    if (v == null || v.trim().isEmpty) return 'Required';
                    final n = double.tryParse(v);
                    if (n == null || n <= 0) return 'Must be positive';
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _notesCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Notes',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 2,
                ),
                if (actionState is AsyncError) ...[
                  const SizedBox(height: 16),
                  Text(
                    actionState.error.toString(),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
      actions: _dialogActions(
        isLoading: isLoading,
        onCancel: () => Navigator.of(context).pop(),
        onSubmit: _submit,
        submitLabel: 'Create',
      ),
    );
  }
}

// =============================================================================
// Update Transfer Status Dialog
// =============================================================================

class _UpdateTransferStatusDialog extends ConsumerStatefulWidget {
  final String transferId;
  const _UpdateTransferStatusDialog({required this.transferId});

  @override
  ConsumerState<_UpdateTransferStatusDialog> createState() =>
      _UpdateTransferStatusDialogState();
}

class _UpdateTransferStatusDialogState
    extends ConsumerState<_UpdateTransferStatusDialog> {
  static const _statuses = ['pending', 'in_transit', 'completed', 'cancelled'];
  String? _selectedStatus;

  Future<void> _submit() async {
    if (_selectedStatus == null) return;
    final success = await ref
        .read(updateTransferStatusActionProvider.notifier)
        .updateStatus(widget.transferId, _selectedStatus!);
    if (success && mounted) {
      Navigator.of(context).pop();
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Transfer status updated')));
    }
  }

  @override
  Widget build(BuildContext context) {
    final actionState = ref.watch(updateTransferStatusActionProvider);
    final isLoading = actionState is AsyncLoading;

    return AlertDialog(
      title: const Text('Update Transfer Status'),
      content: SizedBox(
        width: 320,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownButtonFormField<String>(
              value: _selectedStatus,
              decoration: const InputDecoration(
                labelText: 'New Status *',
                border: OutlineInputBorder(),
              ),
              items: _statuses
                  .map(
                    (s) => DropdownMenuItem(
                      value: s,
                      child: Text(
                        s[0].toUpperCase() +
                            s.substring(1).replaceAll('_', ' '),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (v) => setState(() => _selectedStatus = v),
            ),
            if (actionState is AsyncError) ...[
              const SizedBox(height: 12),
              Text(
                actionState.error.toString(),
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            ],
          ],
        ),
      ),
      actions: _dialogActions(
        isLoading: isLoading,
        onCancel: () => Navigator.of(context).pop(),
        onSubmit: _selectedStatus != null ? _submit : () {},
        submitLabel: 'Update',
      ),
    );
  }
}
