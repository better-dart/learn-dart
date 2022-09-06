#include "include/ffi_core/ffi_core_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "ffi_core_plugin.h"

void FfiCorePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  ffi_core::FfiCorePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
