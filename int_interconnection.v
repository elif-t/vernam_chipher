`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2022 23:27:50
// Design Name: 
// Module Name: int_interconnection
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


module int_interconnection(
    input clk, in0,
    output reg out0
    );

reg A = 0;
reg state = 0;

always @(posedge clk)
    begin
    
    case(state)
        0 : begin
            out0 = 0;
            if(in0)
                state = 1;
        end
        1 : begin
            out0 = 1;
            if(A) begin
                A = 0;
                state = 0;
             end
             else
                A = A+1;
        end
    endcase
end

endmodule
