import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ffi_core_method_channel.dart';

abstract class FfiCorePlatform extends PlatformInterface {
  /// Constructs a FfiCorePlatform.
  FfiCorePlatform() : super(token: _token);

  static final Object _token = Object();

  static FfiCorePlatform _instance = MethodChannelFfiCore();

  /// The default instance of [FfiCorePlatform] to use.
  ///
  /// Defaults to [MethodChannelFfiCore].
  static FfiCorePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FfiCorePlatform] when
  /// they register themselves.
  static set instance(FfiCorePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
