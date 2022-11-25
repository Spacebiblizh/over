import 'package:flutter_test/flutter_test.dart';
import 'package:over/over.dart';
import 'package:over/over_platform_interface.dart';
import 'package:over/over_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOverPlatform 
    with MockPlatformInterfaceMixin
    implements OverPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final OverPlatform initialPlatform = OverPlatform.instance;

  test('$MethodChannelOver is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOver>());
  });

  test('getPlatformVersion', () async {
    Over overPlugin = Over();
    MockOverPlatform fakePlatform = MockOverPlatform();
    OverPlatform.instance = fakePlatform;
  
    expect(await overPlugin.getPlatformVersion(), '42');
  });
}
