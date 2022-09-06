#import "FfiCorePlugin.h"
#if __has_include(<ffi_core/ffi_core-Swift.h>)
#import <ffi_core/ffi_core-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ffi_core-Swift.h"
#endif

@implementation FfiCorePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFfiCorePlugin registerWithRegistrar:registrar];
}
@end
