`timescale 1ns/1ps

module traffic_light_tb;

reg clk;
reg rst;

wire ns_red;
wire ns_yellow;
wire ns_green;

wire ew_red;
wire ew_yellow;
wire ew_green;

traffic_light_controller DUT(
    .clk(clk),
    .rst(rst),
    .ns_red(ns_red),
    .ns_yellow(ns_yellow),
    .ns_green(ns_green),
    .ew_red(ew_red),
    .ew_yellow(ew_yellow),
    .ew_green(ew_green)
);

always #5 clk = ~clk;

initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, traffic_light_tb);

    clk = 0;
    rst = 1;

    #20;
    rst = 0;

    #500;

    $finish;
end

initial begin
    $monitor(
    "Time=%0t NS[R=%b Y=%b G=%b] EW[R=%b Y=%b G=%b]",
    $time,
    ns_red,
    ns_yellow,
    ns_green,
    ew_red,
    ew_yellow,
    ew_green
    );
end

endmodule