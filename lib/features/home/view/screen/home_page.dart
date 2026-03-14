import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../viewmodel/home_viewmodel.dart';
import '../../viewmodel/store_viewmodel.dart';
import '../../../dashboard/view/screen/dashboard_page.dart';
import '../../../help/view/screen/help_page.dart';
import '../../../kot/view/screen/kot_page.dart';
import '../../../orders/view/screen/orders_page.dart';
import '../../../settings/view/screen/settings_page.dart';
import '../widgets/order_line_section.dart';
import '../widgets/order_summary_panel.dart';
import '../widgets/sidebar.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int _selectedIndex = 0;

  void _onSidebarItemSelected(int index) {
    if (index == -1) {
      // Refresh action
      ref.invalidate(activeOrdersProvider);
      ref.invalidate(productListProvider);
      ref.invalidate(categoryListProvider);
      ref.invalidate(storeListProvider);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Refreshing data…'),
            duration: Duration(seconds: 1),
          ),
        );
      }
      return;
    }
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          AppSidebar(
            selectedIndex: _selectedIndex,
            onItemSelected: _onSidebarItemSelected,
          ),
          // Content
          Expanded(child: _buildContent()),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return switch (_selectedIndex) {
      0 => const _PosScreen(),
      1 => const DashboardPage(),
      2 => const OrdersPage(),
      3 => const KotPage(),
      4 => const HelpPage(),
      5 => const SettingsPage(),
      _ => const _PosScreen(),
    };
  }
}

/// The main POS screen: order line section + order summary panel
class _PosScreen extends StatelessWidget {
  const _PosScreen();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        // Order line section (categories, products, active orders)
        Expanded(child: OrderLineSection()),
        // Order summary panel (cart, payment)
        OrderSummaryPanel(),
      ],
    );
  }
}
