const std = @import("std");

pub fn build(b: *std.Build) void {
    // build options
    const optimize = b.standardOptimizeOption(.{});

    // basic build flow
    // $ zig build --summary all
    const exe = b.addExecutable(.{
        .name = "hello",
        .root_module = b.createModule(.{
            .root_source_file = b.path("hello.zig"),
            .target = b.graph.host,
            .optimize = optimize,
        }),
    });

    b.installArtifact(exe);

    // add run step
    // $ zig build run --summary all
    const run_exe = b.addRunArtifact(exe);

    const run_step = b.step("run", "Run the application");
    run_step.dependOn(&run_exe.step);
}
