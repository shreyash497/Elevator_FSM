`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2026 17:14:58
// Design Name: 
// Module Name: Elevator
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

module Elevator (
    input clk,
    input reset,
    input req_up,      
    input req_down,    
    output reg floor   
);

    parameter IDLE  = 2'b00,
              UP    = 2'b01,
              DOWN  = 2'b10,
              OPEN  = 2'b11;

    reg [1:0] state, next_state;

    
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= IDLE;
        else
            state <= next_state;
    end

   
    always @(*) begin
        case (state)
            IDLE: begin
                if (req_up && floor == 0)
                    next_state = UP;
                else if (req_down && floor == 1)
                    next_state = DOWN;
                else
                    next_state = IDLE;
            end

            UP:    next_state = OPEN;
            DOWN:  next_state = OPEN;
            OPEN:  next_state = IDLE;

            default: next_state = IDLE;
        endcase
    end

    
    always @(posedge clk or posedge reset) begin
        if (reset)
            floor <= 0;
        else begin
            case (state)
                UP:   floor <= 1;
                DOWN: floor <= 0;
                default: floor <= floor;
            endcase
        end
    end

endmodule
