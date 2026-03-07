part of 'init_dependencies.dart';

final GetIt serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  // Dotenv
  await dotenv.load(fileName: ".env");

  // Database (registered first — interceptor needs it)
  serviceLocator.registerLazySingleton<AppDatabase>(() => AppDatabase());

  // Network — every repository uses this intercepted client automatically
  serviceLocator.registerSingleton<http.Client>(
    InterceptedClient.build(interceptors: [HttpRequestInterceptor()]),
  );

  // 401 callback: clear the DB-side session so the provider detects logout
  HttpRequestInterceptor.onUnauthorized = () async {
    final db = serviceLocator<AppDatabase>();
    await db.clearAllData();
  };

  // Connection checker
  serviceLocator.registerLazySingleton<ConnectionChecker>(
    () => ConnectionCheckerImpl(),
  );
}
