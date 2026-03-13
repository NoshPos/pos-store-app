import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../home/view/widgets/store_selector.dart';
import 'employees_page.dart';
import 'inventory_page.dart';
import 'products_page.dart';
import 'sales_page.dart';
import 'shifts_page.dart';
import 'stores_page.dart';

/// Dashboard shell — handles internal navigation between the 4 modules.
class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {
  /// null  → dashboard home (grid)
  /// 0–5   → Stores, Products, Inventory, Sales, Employees, Shifts
  int? _activeModule;

  void _openModule(int index) => setState(() => _activeModule = index);
  void _goHome() => setState(() => _activeModule = null);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTopBar(context),
        const Divider(height: 1),
        Expanded(child: _buildBody()),
      ],
    );
  }

  // ─── Top bar with title + breadcrumb back button ──────────────────────
  Widget _buildTopBar(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final titles = ['Stores', 'Products', 'Inventory', 'Sales', 'Employees', 'Shifts'];
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      color: cs.surface,
      child: Row(
        children: [
          if (_activeModule != null) ...[
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: _goHome,
              tooltip: 'Back to Dashboard',
            ),
            const SizedBox(width: 8),
            Text(
              'Dashboard  /  ${titles[_activeModule!]}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ] else
            Text('Dashboard', style: Theme.of(context).textTheme.titleLarge),
          const Spacer(),
          const StoreSelector(),
        ],
      ),
    );
  }

  // ─── Body ─────────────────────────────────────────────────────────────
  Widget _buildBody() {
    if (_activeModule == null) return _DashboardHome(onTap: _openModule);
    return switch (_activeModule!) {
      0 => const StoresPage(),
      1 => const ProductsPage(),
      2 => const InventoryPage(),
      3 => const SalesPage(),
      4 => const EmployeesPage(),
      5 => const ShiftsPage(),
      _ => const SizedBox.shrink(),
    };
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Dashboard Home — card grid for the 4 modules
// ═══════════════════════════════════════════════════════════════════════════

class _DashboardHome extends StatelessWidget {
  final ValueChanged<int> onTap;
  const _DashboardHome({required this.onTap});

  static const _modules = [
    _ModuleInfo(
      Icons.storefront,
      'Stores',
      'Manage your restaurant locations, terminals & tables',
    ),
    _ModuleInfo(Icons.fastfood, 'Products', 'Products, categories & pricing'),
    _ModuleInfo(
      Icons.inventory_2,
      'Inventory',
      'Stock levels, adjustments & items',
    ),
    _ModuleInfo(
      Icons.point_of_sale,
      'Sales',
      'View orders, payments & sales history',
    ),
    _ModuleInfo(
      Icons.people,
      'Employees',
      'Manage staff members',
    ),
    _ModuleInfo(
      Icons.schedule,
      'Shift Management',
      'Manage shift timings and cash sessions',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome to the Management Dashboard',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 8),
          Text(
            'Select a module below to get started.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 32),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                // 2 cols on narrow (<900), 4 cols on wider
                final crossAxisCount = constraints.maxWidth > 900 ? 4 : 2;
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 24,
                    childAspectRatio: 1.4,
                  ),
                  itemCount: _modules.length,
                  itemBuilder: (context, i) {
                    return _ModuleCard(
                      info: _modules[i],
                      onTap: () => onTap(i),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ModuleInfo {
  final IconData icon;
  final String title;
  final String subtitle;
  const _ModuleInfo(this.icon, this.title, this.subtitle);
}

class _ModuleCard extends StatelessWidget {
  final _ModuleInfo info;
  final VoidCallback onTap;
  const _ModuleCard({required this.info, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: cs.outlineVariant),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(info.icon, size: 36, color: cs.primary),
              const SizedBox(height: 16),
              Text(
                info.title,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 4),
              Text(
                info.subtitle,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: cs.onSurfaceVariant),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
