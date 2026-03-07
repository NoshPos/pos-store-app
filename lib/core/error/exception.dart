/// Base exception class
abstract class AppException implements Exception {
  final String message;
  final int? statusCode;

  const AppException(this.message, [this.statusCode]);

  @override
  String toString() => message;
}

/// Server-related exception
class ServerException extends AppException {
  const ServerException([
    super.message = 'Server error occurred.',
    super.statusCode,
  ]);
}
