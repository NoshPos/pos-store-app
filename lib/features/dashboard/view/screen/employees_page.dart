import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../home/viewmodel/store_viewmodel.dart';
import '../../model/employee_models.dart';
import '../../viewmodel/employee_viewmodel.dart';

class EmployeesPage extends ConsumerStatefulWidget {
  const EmployeesPage({super.key});

  @override
  ConsumerState<EmployeesPage> createState() => _EmployeesPageState();
}

class _EmployeesPageState extends ConsumerState<EmployeesPage> {
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Text(
                'Employees',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const Spacer(),
              FilledButton.icon(
                onPressed: () => _showAddEmployeeDialog(context),
                icon: const Icon(Icons.person_add),
                label: const Text('Add Employee'),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Search bar
          SizedBox(
            width: 360,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search employees...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
              ),
              onChanged: (value) => setState(() => _searchQuery = value),
            ),
          ),
          const SizedBox(height: 16),

          // Employee table
          Expanded(child: _EmployeeDataTableView(searchQuery: _searchQuery)),
        ],
      ),
    );
  }

  void _showAddEmployeeDialog(BuildContext context) {
    showDialog(context: context, builder: (_) => const _AddEmployeeDialog());
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Employee DataTable
// ═══════════════════════════════════════════════════════════════════════════

class _EmployeeDataTableView extends ConsumerWidget {
  final String searchQuery;
  const _EmployeeDataTableView({required this.searchQuery});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final employeesAsync = ref.watch(employeeListProvider);

    return employeesAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Error: $e',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
            const SizedBox(height: 12),
            OutlinedButton(
              onPressed: () =>
                  ref.read(employeeListProvider.notifier).refresh(),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
      data: (employees) {
        final filtered = searchQuery.isEmpty
            ? employees
            : employees.where((e) {
                final q = searchQuery.toLowerCase();
                return e.name.toLowerCase().contains(q) ||
                    e.role.toLowerCase().contains(q) ||
                    (e.phone?.toLowerCase().contains(q) ?? false);
              }).toList();

        if (filtered.isEmpty) {
          return const Center(child: Text('No employees found.'));
        }
        return _EmployeeDataTable(employees: filtered);
      },
    );
  }
}

class _EmployeeDataTable extends ConsumerWidget {
  final List<Employee> employees;
  const _EmployeeDataTable({required this.employees});

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
              DataColumn(label: Text('Employee Name')),
              DataColumn(label: Text('Code')),
              DataColumn(label: Text('Role')),
              DataColumn(label: Text('Phone')),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('Actions')),
            ],
            rows: employees.map((emp) {
              return DataRow(
                cells: [
                  DataCell(
                    Text(
                      emp.name,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  DataCell(Text(emp.employeeCode)),
                  DataCell(
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: cs.primaryContainer.withValues(alpha: 0.5),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        emp.role[0].toUpperCase() + emp.role.substring(1),
                        style: TextStyle(
                          fontSize: 12,
                          color: cs.onPrimaryContainer,
                        ),
                      ),
                    ),
                  ),
                  DataCell(Text(emp.phone ?? '—')),
                  DataCell(
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: emp.isActive
                            ? Colors.green.withValues(alpha: 0.12)
                            : Colors.red.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        emp.isActive ? 'Active' : 'Inactive',
                        style: TextStyle(
                          fontSize: 12,
                          color: emp.isActive ? Colors.green : Colors.red,
                        ),
                      ),
                    ),
                  ),
                  DataCell(
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit_outlined, size: 20),
                          tooltip: 'Edit',
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) =>
                                  _EditEmployeeDialog(employee: emp),
                            );
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            emp.isActive
                                ? Icons.person_off_outlined
                                : Icons.person_outlined,
                            size: 20,
                          ),
                          tooltip: emp.isActive ? 'Deactivate' : 'Activate',
                          onPressed: () async {
                            final newStatus = !emp.isActive;
                            // Optimistic instant UI update
                            ref
                                .read(employeeListProvider.notifier)
                                .optimisticToggle(emp.id, newStatus);
                            final success = await ref
                                .read(
                                  toggleEmployeeStatusActionProvider.notifier,
                                )
                                .setActive(
                                  employeeId: emp.id,
                                  isActive: newStatus,
                                );
                            if (!success && context.mounted) {
                              final err = ref
                                  .read(toggleEmployeeStatusActionProvider)
                                  .error;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    err?.toString() ??
                                        'Failed to update employee status',
                                  ),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            }
                          },
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

class _EditEmployeeDialog extends ConsumerStatefulWidget {
  final Employee employee;
  const _EditEmployeeDialog({required this.employee});

  @override
  ConsumerState<_EditEmployeeDialog> createState() =>
      _EditEmployeeDialogState();
}

class _EditEmployeeDialogState extends ConsumerState<_EditEmployeeDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameCtrl;
  late final TextEditingController _phoneCtrl;
  late final TextEditingController _emailCtrl;
  late String _selectedRole;

  static const _roles = ['cashier', 'waiter', 'manager', 'chef'];

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: widget.employee.name);
    _phoneCtrl = TextEditingController(text: widget.employee.phone ?? '');
    _emailCtrl = TextEditingController(text: widget.employee.email ?? '');
    _selectedRole = widget.employee.role;
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _phoneCtrl.dispose();
    _emailCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final updateState = ref.watch(updateEmployeeActionProvider);

    return AlertDialog(
      title: const Text('Edit Employee'),
      content: SizedBox(
        width: 450,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _nameCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Name *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) =>
                      (v == null || v.trim().isEmpty) ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _phoneCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Phone',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _emailCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  initialValue: _selectedRole,
                  decoration: const InputDecoration(
                    labelText: 'Role *',
                    border: OutlineInputBorder(),
                  ),
                  items: _roles
                      .map(
                        (r) => DropdownMenuItem(
                          value: r,
                          child: Text(r[0].toUpperCase() + r.substring(1)),
                        ),
                      )
                      .toList(),
                  onChanged: (v) {
                    if (v != null) setState(() => _selectedRole = v);
                  },
                ),
                if (updateState is AsyncError) ...[
                  const SizedBox(height: 12),
                  Text(
                    updateState.error.toString(),
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
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: updateState is AsyncLoading ? null : _submit,
          child: updateState is AsyncLoading
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Text('Save'),
        ),
      ],
    );
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    final success = await ref
        .read(updateEmployeeActionProvider.notifier)
        .updateEmployee(
          employeeId: widget.employee.id,
          name: _nameCtrl.text.trim(),
          phone: _phoneCtrl.text.trim().isEmpty ? null : _phoneCtrl.text.trim(),
          email: _emailCtrl.text.trim().isEmpty ? null : _emailCtrl.text.trim(),
          role: _selectedRole,
        );
    if (success && mounted) {
      Navigator.of(context).pop();
    }
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Add Employee Dialog
// ═══════════════════════════════════════════════════════════════════════════

class _AddEmployeeDialog extends ConsumerStatefulWidget {
  const _AddEmployeeDialog();

  @override
  ConsumerState<_AddEmployeeDialog> createState() => _AddEmployeeDialogState();
}

class _AddEmployeeDialogState extends ConsumerState<_AddEmployeeDialog> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _codeCtrl = TextEditingController();
  final _pinCtrl = TextEditingController();

  String _selectedRole = 'cashier';

  static const _roles = ['cashier', 'waiter', 'manager', 'chef'];

  @override
  void dispose() {
    _nameCtrl.dispose();
    _phoneCtrl.dispose();
    _emailCtrl.dispose();
    _codeCtrl.dispose();
    _pinCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final createState = ref.watch(createEmployeeActionProvider);

    return AlertDialog(
      title: const Text('Add Employee'),
      content: SizedBox(
        width: 450,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _nameCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Name *',
                    border: OutlineInputBorder(),
                  ),
                  validator: (v) =>
                      (v == null || v.trim().isEmpty) ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _codeCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Employee Code *',
                    border: OutlineInputBorder(),
                    hintText: 'e.g. EMP001',
                  ),
                  validator: (v) =>
                      (v == null || v.trim().isEmpty) ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _pinCtrl,
                  decoration: const InputDecoration(
                    labelText: 'PIN *',
                    border: OutlineInputBorder(),
                    hintText: 'e.g. 1234',
                  ),
                  obscureText: true,
                  validator: (v) =>
                      (v == null || v.trim().isEmpty) ? 'Required' : null,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _phoneCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Phone',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _emailCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  initialValue: _selectedRole,
                  decoration: const InputDecoration(
                    labelText: 'Role *',
                    border: OutlineInputBorder(),
                  ),
                  items: _roles
                      .map(
                        (r) => DropdownMenuItem(
                          value: r,
                          child: Text(r[0].toUpperCase() + r.substring(1)),
                        ),
                      )
                      .toList(),
                  onChanged: (v) {
                    if (v != null) setState(() => _selectedRole = v);
                  },
                ),
                if (createState is AsyncError) ...[
                  const SizedBox(height: 12),
                  Text(
                    createState.error.toString(),
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
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: createState is AsyncLoading ? null : _submit,
          child: createState is AsyncLoading
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Text('Add Employee'),
        ),
      ],
    );
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate()) return;

    final store = ref.read(selectedStoreProvider);
    if (store == null) return;

    final employee = EmployeeCreate(
      storeId: store.id,
      name: _nameCtrl.text.trim(),
      employeeCode: _codeCtrl.text.trim(),
      pin: _pinCtrl.text.trim(),
      phone: _phoneCtrl.text.trim().isEmpty ? null : _phoneCtrl.text.trim(),
      email: _emailCtrl.text.trim().isEmpty ? null : _emailCtrl.text.trim(),
      role: _selectedRole,
    );

    final success = await ref
        .read(createEmployeeActionProvider.notifier)
        .createEmployee(employee);
    if (success && mounted) {
      Navigator.of(context).pop();
    }
  }
}
