import 'package:package_info_plus/package_info_plus.dart';

Future<String> getCurversion() async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  return packageInfo.version;
}
