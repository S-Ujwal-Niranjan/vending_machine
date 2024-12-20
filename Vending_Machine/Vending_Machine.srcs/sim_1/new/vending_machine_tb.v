`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2024 21:42:42
// Design Name: 
// Module Name: vending_machine_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vending_machine_tb;
//inputs
reg clk;
reg [1:0] in;
reg rst;
//output
reg out;
reg [1:0] change;

vending_machine uut(
    .clk(clk),
    .in(in),
    .rst(rst),
    .out(out),
    .change(change)    
);

initial 
begin
    rst = 1;
    clk = 0;
    #6 rst = 0;
    in = 1;
    #11 in = 1;
    #16 in = 1;
    #21 finish;
end
 always #5 clk = ~clk;
endmodule