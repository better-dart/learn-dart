import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ffi_core_platform_interface.dart';

/// An implementation of [FfiCorePlatform] that uses method channels.
class MethodChannelFfiCore extends FfiCorePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ffi_core');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
