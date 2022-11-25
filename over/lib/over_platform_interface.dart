import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'over_method_channel.dart';

abstract class OverPlatform extends PlatformInterface {
  /// Constructs a OverPlatform.
  OverPlatform() : super(token: _token);

  static final Object _token = Object();

  static OverPlatform _instance = MethodChannelOver();

  /// The default instance of [OverPlatform] to use.
  ///
  /// Defaults to [MethodChannelOver].
  static OverPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OverPlatform] when
  /// they register themselves.
  static set instance(OverPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
