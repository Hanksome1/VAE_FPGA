`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/11 02:22:16
// Design Name: 
// Module Name: Neural_Network
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


module NN #(
    parameter output_number=10, 
    parameter input_number=200, 
    parameter width=11)(
    input clk, 
    input rst_n, 
    input enable, //wait until the previous had finish computing
    input signed [width-1:0]input_node[0:input_number-1],
    input signed [width-1:0]bias[0:output_number-1],
    input signed [width-1:0]weight[0:output_number*input_number-1], 
    output reg signed [width-1:0]sum[0:output_number-1], 
    output reg finish
);

integer i,j, k;
integer address[0:output_number-1];
reg done [0:output_number-1];
//reg signed [width-1:0]product[0:output_number*input_number-1];
reg start;
reg alldone;


always@(posedge clk or negedge rst_n) begin 
	for( k=0 ; k<output_number ; k=k+1) begin 
		if(~rst_n) begin 
			address[k] = 0;
			done[k]=0; 
			sum[k]=0;
		end else if((address[k]<input_number) && enable) begin // If the address number is smaller than output number(the total number needed to be iterated)
			sum[k] <= sum[k] + weight[k*input_number+address[k]]*input_node[address[k]]; 
			address[k] <= address[k]+1; 
			done[k] <=done[k]; 
		end else if((address[k] == input_number) && enable) begin // If it had iterated through the whole 
			sum[k] <= sum[k] + bias[k]; 
			done[k]=1; 
			address[k] <= address[k]+1; 
		end else begin 
			address[k] <= address[k];
			sum[k] <= sum[k]; 
			done[k]=done[k]; 
		end
	end
end

    always @(posedge clk) begin
        if(~rst_n) begin 
            alldone <= 0;
        end else if(done[1]) begin //All neurons done
            alldone <= 1;
        end else 
            alldone <= 0; 
    end
    assign finish = alldone; 
endmodule
