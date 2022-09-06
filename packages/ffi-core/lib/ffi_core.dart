
import 'ffi_core_platform_interface.dart';

class FfiCore {
  Future<String?> getPlatformVersion() {
    return FfiCorePlatform.instance.getPlatformVersion();
  }
}
