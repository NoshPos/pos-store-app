import 'package:url_launcher/url_launcher.dart';

/// Launch a URL with optional configuration for mode and platform-specific options.
///
/// [url] can be either a String or Uri.
/// [mode] specifies the launch mode (default: platformDefault)
Future<void> launchWeb(
  dynamic url, {
  LaunchMode mode = LaunchMode.platformDefault,
}) async {
  final Uri uri = url is Uri ? url : Uri.parse(url);

   // Use url_launcher for standard launches
    final bool launched = await launchUrl(uri, mode: mode);
    if (!launched) {
      throw Exception('Could not launch $uri');
    }
}

/// Check if a URL can be launched.
///
/// [url] can be either a String or Uri.
Future<bool> canLaunchWeb(dynamic url) async {
  final Uri uri = url is Uri ? url : Uri.parse(url);
  return await canLaunchUrl(uri);
}
