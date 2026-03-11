import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/provider/current_user_provider.dart';
import 'core/provider/theme_provider.dart';
import 'core/theme/themes.dart';
import 'features/auth/view/screen/login_page.dart';
import 'features/home/view/screen/home_page.dart';
import 'init_dependencies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userId = ref.watch(currentUserIdProvider);
    final isLoggedIn = userId != null;
    final themeMode = ref.watch(appThemeModeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nosh POS',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
      home: isLoggedIn ? const HomePage() : const LoginPage(),
    );
  }
}
