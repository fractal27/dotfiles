const std = @import("std");
const yazap = @import("yazap");



pub usingnamespace @cImport({
    @cDefine("MAXSIZE","2048");
});


pub fn getContents(path:[std.fs.MAX_PATH_BYTES]u8,
                allocator: std.heap.GeneralPurposeAllocator) [@This().MAXSIZE]u8
{
    const path_buffer: [std.fs.MAX_PATH_BYTES]u8 = undefined;
    const file = try std.fs.realpath(path, &path_buffer);
    defer file.close();

    const file_buffer = try file.readToEndAlloc(allocator, @This().MAXSIZE);
    defer file_buffer.free();
    var iter = std.mem.split(file_buffer, "\n");
    var lines: std.string.String = "";

    while(iter.next())|line|{
        lines+=line+"\n";
    }

    return lines;
}


pub fn main() !void {
    const allocator = std.heap.GeneralPurposeAllocator(.{.safe=true}){};
    defer _ = allocator.deinit;

    var app = yazap.App.init(allocator, "myapp", "my custom test app.");
    defer app.deinit();
    
    var myapp = app.rootCommand();
    var verbose: bool = false;
    var b: [@This().MAXSIZE]u8 = undefined;

    try myapp.addArgs(&[_]yazap.Arg{
        yazap.Arg.positional("FILE",null,null),
        yazap.Arg.booleanOption("verbose",'v',"std.log verbosely")
    });
    const matches = try app.parseProcess();
    
    if(matches.containsArg("verbose")){
        verbose = true;
    }
    if(matches.containsArg("FILE")) |f|{
        std.fmt.bufPrint(&b, "Contents: {}", f);
        std.log.info(b);
        std.fmt.bufPrint(&b, "Contents of file: {}", getContents(f));
        std.log.info(b);
    }
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!


    defer std.testing.expectEqual(@as(i32, 42), list.pop());
    try list.append(42, );

}
