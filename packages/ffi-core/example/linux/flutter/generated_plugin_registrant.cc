//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <ffi_core/ffi_core_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) ffi_core_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FfiCorePlugin");
  ffi_core_plugin_register_with_registrar(ffi_core_registrar);
}
