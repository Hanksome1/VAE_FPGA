`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/14 12:45:27
// Design Name: 
// Module Name: relu
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


module relu #(
    parameter input_number=100,  
    parameter width=10
    )(
    input signed[width-1:0] input_node [0:input_number-1], 
    output reg signed[width-1:0] output_node [0:input_number-1]
    );
integer count; 
always @ * begin 
    for(count = 0; count<input_number ; count=count+1) begin 
        output_node[count]=(input_node[count]>0) ?input_node[count]:0; 
    end
end 
    
endmodule
