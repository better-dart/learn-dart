import 'package:flutter_test/flutter_test.dart';
import 'package:ffi_core/ffi_core.dart';
import 'package:ffi_core/ffi_core_platform_interface.dart';
import 'package:ffi_core/ffi_core_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFfiCorePlatform
    with MockPlatformInterfaceMixin
    implements FfiCorePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FfiCorePlatform initialPlatform = FfiCorePlatform.instance;

  test('$MethodChannelFfiCore is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFfiCore>());
  });

  test('getPlatformVersion', () async {
    FfiCore ffiCorePlugin = FfiCore();
    MockFfiCorePlatform fakePlatform = MockFfiCorePlatform();
    FfiCorePlatform.instance = fakePlatform;

    expect(await ffiCorePlugin.getPlatformVersion(), '42');
  });
}
