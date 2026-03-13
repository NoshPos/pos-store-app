import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/provider/current_user_provider.dart';
import '../../../../core/provider/theme_provider.dart';

class AppSidebar extends ConsumerWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  const AppSidebar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDark = ref.watch(isDarkModeProvider);

    return Container(
      width: 72,
      decoration: BoxDecoration(
        color: colorScheme.surface,
        border: Border(
          right: BorderSide(color: colorScheme.outlineVariant, width: 0.5),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 16),
          // Logo
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: colorScheme.primary,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.restaurant,
              color: colorScheme.onPrimary,
              size: 24,
            ),
          ),
          const SizedBox(height: 24),
          // Nav items
          _SidebarItem(
            icon: Icons.home_outlined,
            selectedIcon: Icons.home,
            index: 0,
            selectedIndex: selectedIndex,
            onTap: () => onItemSelected(0),
            tooltip: 'Home',
          ),
          _SidebarItem(
            icon: Icons.grid_view_outlined,
            selectedIcon: Icons.grid_view,
            index: 1,
            selectedIndex: selectedIndex,
            onTap: () => onItemSelected(1),
            tooltip: 'Dashboard',
          ),
          _SidebarItem(
            icon: Icons.receipt_long_outlined,
            selectedIcon: Icons.receipt_long,
            index: 2,
            selectedIndex: selectedIndex,
            onTap: () => onItemSelected(2),
            tooltip: 'Orders',
          ),
          _SidebarItem(
            icon: Icons.restaurant_menu_outlined,
            selectedIcon: Icons.restaurant_menu,
            index: 3,
            selectedIndex: selectedIndex,
            onTap: () => onItemSelected(3),
            tooltip: 'Kitchen (KOT)',
          ),
          const Spacer(),
          // Dark mode toggle
          _SidebarActionItem(
            icon: isDark ? Icons.light_mode_outlined : Icons.dark_mode_outlined,
            tooltip: isDark ? 'Light Mode' : 'Dark Mode',
            onTap: () {
              ref.read(isDarkModeProvider.notifier).toggle();
            },
          ),
          _SidebarActionItem(
            icon: Icons.refresh,
            tooltip: 'Refresh',
            onTap: () {
              // Trigger a refresh of all data — handled by parent
              onItemSelected(-1);
            },
          ),
          const Divider(indent: 16, endIndent: 16),
          _SidebarItem(
            icon: Icons.help_outline,
            selectedIcon: Icons.help,
            index: 4,
            selectedIndex: selectedIndex,
            onTap: () => onItemSelected(4),
            tooltip: 'Help',
          ),
          _SidebarItem(
            icon: Icons.settings_outlined,
            selectedIcon: Icons.settings,
            index: 5,
            selectedIndex: selectedIndex,
            onTap: () => onItemSelected(5),
            tooltip: 'Settings',
          ),
          _SidebarActionItem(
            icon: Icons.logout,
            tooltip: 'Logout',
            onTap: () async {
              final confirmed = await showDialog<bool>(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text('Logout'),
                  content: const Text('Are you sure you want to logout?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(ctx).pop(false),
                      child: const Text('Cancel'),
                    ),
                    FilledButton(
                      onPressed: () => Navigator.of(ctx).pop(true),
                      child: const Text('Logout'),
                    ),
                  ],
                ),
              );
              if (confirmed == true) {
                await ref.read(currentUserIdProvider.notifier).clearUser();
              }
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _SidebarItem extends StatelessWidget {
  final IconData icon;
  final IconData selectedIcon;
  final int index;
  final int selectedIndex;
  final VoidCallback onTap;
  final String tooltip;

  const _SidebarItem({
    required this.icon,
    required this.selectedIcon,
    required this.index,
    required this.selectedIndex,
    required this.onTap,
    required this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = index == selectedIndex;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Tooltip(
        message: tooltip,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: isSelected
                  ? colorScheme.primaryContainer
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              isSelected ? selectedIcon : icon,
              color: isSelected
                  ? colorScheme.onPrimaryContainer
                  : colorScheme.onSurfaceVariant,
              size: 24,
            ),
          ),
        ),
      ),
    );
  }
}

class _SidebarActionItem extends StatelessWidget {
  final IconData icon;
  final String tooltip;
  final VoidCallback onTap;

  const _SidebarActionItem({
    required this.icon,
    required this.tooltip,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Tooltip(
        message: tooltip,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            width: 48,
            height: 48,
            child: Icon(icon, color: colorScheme.onSurfaceVariant, size: 24),
          ),
        ),
      ),
    );
  }
}
