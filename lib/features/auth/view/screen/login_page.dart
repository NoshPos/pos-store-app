import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/utils/show_snackbar.dart';
import '../../../home/view/home_page.dart';
import '../../viewmodel/auth_viewmodel.dart';
import '../widgets/login_form.dart';
import '../widgets/login_left_panel.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    ref
        .read(authViewModelProvider.notifier)
        .login(email: _emailCtrl.text.trim(), password: _passwordCtrl.text);
  }

  @override
  Widget build(BuildContext context) {
    // Listen for state changes — navigate on success, toast on error.
    ref.listen(authViewModelProvider, (_, next) {
      if (next == null) return;
      next.whenOrNull(
        data: (_) {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (_) => const HomePage()),
            (_) => false,
          );
        },
        error: (err, _) {
          showSnackBar(context, err.toString(), SnackBarType.error);
        },
      );
    });

    final isLoading = ref.watch(
      authViewModelProvider.select((v) => v?.isLoading == true),
    );

    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surfaceContainerLowest,
      body: Row(
        children: [
          // ── Left panel ──────────────────────────────────────────────────
          Expanded(flex: 5, child: LoginLeftPanel(colorScheme: colorScheme)),

          // ── Right panel ─────────────────────────────────────────────────
          Expanded(
            flex: 4,
            child: Container(
              color: colorScheme.surface,
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 48,
                    vertical: 40,
                  ),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 420),
                    child: LoginForm(
                      formKey: _formKey,
                      emailCtrl: _emailCtrl,
                      passwordCtrl: _passwordCtrl,
                      obscurePassword: _obscurePassword,
                      isLoading: isLoading,
                      onToggleObscure: () => setState(() {
                        _obscurePassword = !_obscurePassword;
                      }),
                      onSubmit: _submit,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
