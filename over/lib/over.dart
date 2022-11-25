
import 'over_platform_interface.dart';

class Over {
  Future<String?> getPlatformVersion() {
    return OverPlatform.instance.getPlatformVersion();
  }
}
