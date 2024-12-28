`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NONE
// Engineer: S Ujwal Niranjan
// 
// Create Date: 20.12.2024 21:42:42
// Design Name: Vending Machine
// Module Name: vending_machine_tb
// Project Name: VENDING MACHINE
// Target Devices: Basys 3 board (XC7A35T-1CPG236C)
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

    // Inputs
    reg clk;
    reg rst;
    reg [1:0] in;

    // Outputs
    wire out;
    wire [1:0] change;

    // Instantiate the vending machine module
    vending_machine uut (
        .clk(clk),
        .rst(rst),
        .in(in),
        .out(out),
        .change(change)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end

    // Test stimulus
    initial begin
        // Initialize inputs
        rst = 1;
        in = 2'b00;
        
        // Wait for reset
        #10 rst = 0;

        // Test case 1: No input (stay in s0)
        #10 in = 2'b00;
        #10;

        // Test case 2: Insert 1 unit (s0 -> s1)
        #10 in = 2'b01;
        #10;

        // Test case 3: Insert 1 more unit (s1 -> s2)
        #10 in = 2'b01;
        #10;

        // Test case 4: Insert 2 units (s2 -> s0 with product dispensed)
        #10 in = 2'b10;
        #10;

        // Test case 5: Reset during operation
        rst = 1;
        #10 rst = 0;
        in = 2'b01;
        #10;

        // Test case 6: Insert 2 units directly (s0 -> s2)
        in = 2'b10;
        #10;

        // Test case 7: Idle (stay in s2, check change output)
        in = 2'b00;
        #10;

        // End simulation
        $finish;
    end


    end

endmodule
