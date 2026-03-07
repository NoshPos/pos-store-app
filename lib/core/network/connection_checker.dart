import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

/// Abstract interface for connection checking
abstract interface class ConnectionChecker {
  Future<bool> get isConnected;
  Stream<InternetStatus> get onStatusChange;
}

/// Implementation of connection checker using internet_connection_checker_plus
class ConnectionCheckerImpl implements ConnectionChecker {
  final InternetConnection _connectionChecker;

  ConnectionCheckerImpl() : _connectionChecker = InternetConnection();

  @override
  Future<bool> get isConnected => _connectionChecker.hasInternetAccess;

  @override
  Stream<InternetStatus> get onStatusChange =>
      _connectionChecker.onStatusChange;
}
