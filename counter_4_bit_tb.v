`timescale 1ns / 1ps
module counter_4_bit_tb;
reg clk , reset_n;
wire [3:0] o_cnt;
 
// clk gen
always
    #5 clk = ~clk;
 
initial begin
//initialize value
$display("initialize value [%d]", $time);
    reset_n = 1;
    clk     = 0;
 
// reset_n gen
$display("Reset! [%d]", $time);
# 100
    reset_n = 0;
# 10
    reset_n = 1;
// start
$display("Start! [%d]", $time);
# 1000
$display("Finish! [%d]", $time);
$finish;
end
 
// Call DUT
counter_4_bit u_counter_4_bit(
    .clk (clk),
    .reset_n (reset_n),
    .cnt(o_cnt)    // mapping, Other names are available
    );
endmodule