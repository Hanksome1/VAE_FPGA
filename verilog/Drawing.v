`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/09 12:13:52
// Design Name: 
// Module Name: Drawing
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

`define ofset_x 10'd180
`define ofset_y 10'd100
module Drawing(
    input clk, 
    input [9:0] h_cnt, 
    input [9:0] v_cnt,
    output [11:0]data,
    input signed [9:0]input_data[0:195]
    );
wire valid, border; 
reg [9:0]address ; 
assign valid = h_cnt>10'd180 && h_cnt<10'd460 && v_cnt>10'd100 && v_cnt<10'd380; 
assign border = h_cnt/5==10'd36 || h_cnt/5==10'd92 || v_cnt/5==10'd20 || v_cnt/5==10'd76; 
//wire [7:0] test_data_b [0:783] = '{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 116, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 90, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 76, 105, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 127, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 127, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 122, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 127, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 127, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 115, 127, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 127, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 127, 108, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 127, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 43, 89, 124, 127, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 127, 42, 0, 0, 0, 23, 24, 58, 72, 75, 120, 121, 117, 89, 120, 126, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 126, 118, 103, 103, 103, 126, 127, 125, 120, 99, 71, 45, 14, 2, 116, 125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 88, 88, 88, 88, 88, 49, 28, 0, 0, 0, 0, 0, 51, 127, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 127, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 127, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 127, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 127, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 127, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 127, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 127, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 127, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
//logic  [7:0] test_data_a [0:783] = '{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 40, 103, 127, 127, 127, 127, 48, 40, 40, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 79, 79, 79, 84, 126, 126, 126, 126, 126, 126, 126, 126, 126, 105, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 120, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 126, 126, 126, 119, 56, 107, 126, 126, 126, 126, 126, 126, 126, 126, 126, 105, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 17, 17, 17, 15, 0, 15, 74, 17, 102, 117, 126, 126, 126, 126, 126, 118, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 17, 99, 126, 126, 126, 126, 122, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 16, 101, 101, 108, 126, 126, 126, 126, 120, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 83, 126, 126, 126, 126, 126, 126, 126, 119, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 126, 126, 126, 126, 126, 126, 126, 126, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 100, 126, 126, 126, 126, 126, 126, 126, 115, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 43, 43, 43, 124, 126, 126, 126, 126, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 76, 126, 126, 126, 125, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 119, 126, 126, 126, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 116, 126, 126, 75, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 101, 126, 126, 126, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 105, 105, 105, 29, 18, 18, 10, 13, 18, 75, 111, 126, 126, 126, 126, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 126, 126, 126, 126, 126, 126, 97, 107, 126, 126, 126, 126, 126, 126, 78, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 118, 117, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 78, 123, 126, 126, 126, 126, 126, 126, 126, 126, 79, 78, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 126, 126, 126, 126, 126, 63, 39, 39, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
reg [3:0] value; 

always@* begin 
    if( (valid==1'b1) ) begin 
        address = ((h_cnt-10'd180)/10'd20) + 10'd14*((v_cnt-10'd100)/10'd20);
        if(value>4'd15) value = 4'd15; 
        else value = input_data[address]; 
    end else begin 
        address = 10'b0;
        value = 4'b1111; 
    end 
end
assign data = {value,value, value}; 

endmodule
