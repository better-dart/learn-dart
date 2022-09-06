#ifndef FLUTTER_PLUGIN_FFI_CORE_PLUGIN_H_
#define FLUTTER_PLUGIN_FFI_CORE_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace ffi_core {

class FfiCorePlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FfiCorePlugin();

  virtual ~FfiCorePlugin();

  // Disallow copy and assign.
  FfiCorePlugin(const FfiCorePlugin&) = delete;
  FfiCorePlugin& operator=(const FfiCorePlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace ffi_core

#endif  // FLUTTER_PLUGIN_FFI_CORE_PLUGIN_H_
