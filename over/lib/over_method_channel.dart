import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'over_platform_interface.dart';

/// An implementation of [OverPlatform] that uses method channels.
class MethodChannelOver extends OverPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('over');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
