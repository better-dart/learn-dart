const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();

    // todo x: generate static library: *.a
    const lib = b.addStaticLibrary("ffi-core-zig", "src/main.zig");
    lib.setBuildMode(mode);
    lib.install();

    // todo x: generate shared library: *.dylib
    const share_lib = b.addSharedLibrary("ffi-core-zig", "src/main.zig", b.version(1, 0, 0));
    share_lib.setBuildMode(mode);
    share_lib.install();

    // todo x: unit test:
    const main_tests = b.addTest("src/main.zig");
    main_tests.setBuildMode(mode);

    const test_step = b.step("test", "Run library tests");
    test_step.dependOn(&main_tests.step);
}
