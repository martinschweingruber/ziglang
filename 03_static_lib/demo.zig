const std = @import("std");

extern fn fizzbuzz(n: usize) ?[*:0]const u8;

pub fn main() !void {
    var buf: [1024]u8 = undefined;
    var out = std.fs.File.stdout().writer(&buf);
    const w = &out.interface;

    for (0..100) |n| {
        if (fizzbuzz(n)) |s| {
            try w.print("{s}\n", .{s});
        } else {
            try w.print("{d}\n", .{n});
        }
    }
    try w.flush();
}
