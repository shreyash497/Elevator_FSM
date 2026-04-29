`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2026 17:15:53
// Design Name: 
// Module Name: Elevator_tb
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


`timescale 1ns / 1ps

module Elevator_tb;

    reg clk;
    reg reset;
    reg req_up;
    reg req_down;

    wire floor;

    
    Elevator uut (
        .clk(clk),
        .reset(reset),
        .req_up(req_up),
        .req_down(req_down),
        .floor(floor)
    );

    
    always #5 clk = ~clk;

    initial begin
        
        clk = 0;
        reset = 1;
        req_up = 0;
        req_down = 0;

       
        #10 reset = 0;

      
        #10 req_up = 1;
        #10 req_up = 0;

        #40;

       
        #10 req_down = 1;
        #10 req_down = 0;

        #40;

        $finish;
    end

endmodule
