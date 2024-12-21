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


module vending_machine(
    input clk,
    input rst,
    input [1:0] in,
    output reg out,
    output reg [1:0] change
    );
    
parameter s0 = 2'b00;
parameter s1 = 2'b01;
parameter s2 = 2'b10;
reg [1:0] c_state,n_state;
always@ (posedge clk)
begin
    if(rst == 1)
    begin
        c_state = 0;
        n_state = 0;
        change = 2'b00;
    end
    else
        c_state = n_state;
    case(c_state)
        s0:
        if(in == 0)
        begin
            n_state = s0;
            out = 0;
            change = 2'b00;
        end
        else if(in == 2'b01)
        begin
            n_state = s1;
            out = 0;
            change = 2'b00;
        end
        else if(in == 2'b10)
        begin
            n_state = s2;
            out = 0;
            change = 2'b00;
        end
        s1:
        if(in == 0)
        begin
            n_state = s0;
            out = 0;
            change = 2'b01;
        end
        else if(in == 2'b01)
        begin
            n_state = s2;
            out = 0;
            change = 2'b00;
        end
        else if(in == 2'b10)
        begin
            n_state = s0;
            out = 1;
            change = 2'b00;
        end
        s2:
        if(in == 0)
        begin
            n_state = s0;
            out = 0;
            change = 2'b10;
        end
        else if(in == 2'b01)
        begin
            n_state = s0;
            out = 1;
            change = 2'b00;
        end
        else if(in == 2'b10)
        begin
            n_state = s0;
            out = 1;
            change = 2'b01;
        end
     endcase 
end        
endmodule
