import 'dart:convert';

/// Base failure class for error handling with fpdart Either pattern
class Failure {
  final String message;
  final int? statusCode;

  const Failure([
    this.message = 'An unexpected error occurred.',
    this.statusCode,
  ]);

  @override
  String toString() => message;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Failure &&
          runtimeType == other.runtimeType &&
          message == other.message &&
          statusCode == other.statusCode;

  @override
  int get hashCode => message.hashCode ^ statusCode.hashCode;
}

/// Parses a pydantic-style error body into a user-friendly message.
String parsePydanticError(String body) {
  try {
    final decoded = jsonDecode(body) as Map<String, dynamic>;
    final detail = decoded['detail'];
    if (detail is List && detail.isNotEmpty) {
      final first = detail.first as Map<String, dynamic>;
      final msg = first['msg'] as String? ?? 'Validation error';
      final loc =
          (first['loc'] as List?)?.whereType<String>().join(' → ') ?? '';
      return loc.isNotEmpty ? '$loc: $msg' : msg;
    }
    if (detail is String) return detail;
  } catch (_) {}
  return body;
}
