import 'dart:ffi';
import 'dart:io';

import 'package:path/path.dart' as p;

import 'package:ffi/ffi.dart' show calloc;

// todo x: ffi binding lib
import 'package:ffi_binding/ffi_binding.dart';

final DynamicLibrary Function() loadLibrary = () {
  final baseDir = '${Directory.current.parent}';

  // todo x: get project root:
  final zigBinDir = p.join(p.dirname(p.current), 'ffi-core-zig/zig-out/lib');

  print('baseDir: ' + baseDir);
  print('zigBinDir: ' + zigBinDir);

  if (Platform.isWindows) {
    return DynamicLibrary.open('${zigBinDir}/libffi-core-zig.dll');
  }
  if (Platform.isMacOS) {
    return DynamicLibrary.open('${zigBinDir}/libffi-core-zig.dylib');
  } else if (Platform.isLinux) {
    return DynamicLibrary.open('${zigBinDir}/libffi-core-zig.so');
  }
  throw 'libusb dynamic library not found';
};

final nativeLib = NativeLibrary(loadLibrary());

void main(List<String> arguments) {
  // todo x: call zig lib
  var result = nativeLib.add(1, 1);

  print("call zig add, $result");
}
