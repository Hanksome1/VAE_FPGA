`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/13 22:32:03
// Design Name: 
// Module Name: decoder0
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


module decoder0 #(
    parameter output_number=10, 
    parameter input_number=200, 
    parameter width=10)(
    input clk, 
    input rst_n, 
    input signed [width-1:0]input_node[0:input_number-1], 
    input enable, 
    output signed[width-1:0]activate_node[0:output_number-1], 
    output reg finish_signal
    );
wire finish[0:output_number-1]; 
wire signed[width-1:0]output_node[0:output_number-1];
wire signed [width-1:0] bias0 = '{30};
wire signed [width-1:0] bias1 = '{42};
wire signed [width-1:0] bias2 = '{63};
wire signed [width-1:0] bias3 = '{31};
wire signed [width-1:0] bias4 = '{-49};
wire signed [width-1:0] bias5 = '{66};
wire signed [width-1:0] bias6 = '{-5};
wire signed [width-1:0] bias7 = '{50};
wire signed [width-1:0] bias8 = '{-70};
wire signed [width-1:0] bias9 = '{66};
wire signed [width-1:0] bias10 = '{57};
wire signed [width-1:0] bias11 = '{-22};
wire signed [width-1:0] bias12 = '{80};
wire signed [width-1:0] bias13 = '{-29};
wire signed [width-1:0] bias14 = '{46};
wire signed [width-1:0] bias15 = '{51};
wire signed [width-1:0] bias16 = '{3};
wire signed [width-1:0] bias17 = '{44};

wire signed [width-1:0] weight0 [0:input_number-1]= '{11,-128};
wire signed [width-1:0] weight1 [0:input_number-1]= '{-24,-31};
wire signed [width-1:0] weight2 [0:input_number-1]= '{-28,-40};
wire signed [width-1:0] weight3 [0:input_number-1]= '{114,81};
wire signed [width-1:0] weight4 [0:input_number-1]= '{-74,107};
wire signed [width-1:0] weight5 [0:input_number-1]= '{15,39};
wire signed [width-1:0] weight6 [0:input_number-1]= '{128,-70};
wire signed [width-1:0] weight7 [0:input_number-1]= '{48,-4};
wire signed [width-1:0] weight8 [0:input_number-1]= '{120,-128};
wire signed [width-1:0] weight9 [0:input_number-1]= '{6,22};
wire signed [width-1:0] weight10 [0:input_number-1]= '{28,-117};
wire signed [width-1:0] weight11 [0:input_number-1]= '{-2,1};
wire signed [width-1:0] weight12 [0:input_number-1]= '{114,-128};
wire signed [width-1:0] weight13 [0:input_number-1]= '{-111,24};
wire signed [width-1:0] weight14 [0:input_number-1]= '{42,128};
wire signed [width-1:0] weight15 [0:input_number-1]= '{-128,-26};
wire signed [width-1:0] weight16 [0:input_number-1]= '{-89,-128};
wire signed [width-1:0] weight17 [0:input_number-1]= '{93,36};




nnsingle #( .input_number(input_number), .width(width)) U_layer0_0 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias0), .weight(weight0), .sum(output_node[0]), .finish(finish[0]));
nnsingle #( .input_number(input_number), .width(width)) U_layer0_1 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias1), .weight(weight1), .sum(output_node[1]), .finish(finish[1]));
nnsingle #( .input_number(input_number), .width(width)) U_layer0_2 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias2), .weight(weight2), .sum(output_node[2]), .finish(finish[2]));
nnsingle #( .input_number(input_number), .width(width)) U_layer0_3 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias3), .weight(weight3), .sum(output_node[3]), .finish(finish[3]));
nnsingle #( .input_number(input_number), .width(width)) U_layer0_4 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias4), .weight(weight4), .sum(output_node[4]), .finish(finish[4]));
nnsingle #( .input_number(input_number), .width(width)) U_layer0_5 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias5), .weight(weight5), .sum(output_node[5]), .finish(finish[5]));
nnsingle #( .input_number(input_number), .width(width)) U_layer0_6 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias6), .weight(weight6), .sum(output_node[6]), .finish(finish[6]));
nnsingle #( .input_number(input_number), .width(width)) U_layer0_7 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias7), .weight(weight7), .sum(output_node[7]), .finish(finish[7]));
nnsingle #( .input_number(input_number), .width(width)) U_layer0_8 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias8), .weight(weight8), .sum(output_node[8]), .finish(finish[8]));
nnsingle #( .input_number(input_number), .width(width)) U_layer0_9 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias9), .weight(weight9), .sum(output_node[9]), .finish(finish[9]));
nnsingle #( .input_number(input_number), .width(width)) U_layer0_10 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias10), .weight(weight10), .sum(output_node[10]), .finish(finish[10]));
nnsingle #( .input_number(input_number), .width(width)) U_layer0_11 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias11), .weight(weight11), .sum(output_node[11]), .finish(finish[11]));
nnsingle #( .input_number(input_number), .width(width)) U_layer0_12 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias12), .weight(weight12), .sum(output_node[12]), .finish(finish[12]));
nnsingle #( .input_number(input_number), .width(width)) U_layer0_13 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias13), .weight(weight13), .sum(output_node[13]), .finish(finish[13]));
nnsingle #( .input_number(input_number), .width(width)) U_layer0_14 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias14), .weight(weight14), .sum(output_node[14]), .finish(finish[14]));
nnsingle #( .input_number(input_number), .width(width)) U_layer0_15 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias15), .weight(weight15), .sum(output_node[15]), .finish(finish[15]));
nnsingle #( .input_number(input_number), .width(width)) U_layer0_16 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias16), .weight(weight16), .sum(output_node[16]), .finish(finish[16]));
nnsingle #( .input_number(input_number), .width(width)) U_layer0_17 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias17), .weight(weight17), .sum(output_node[17]), .finish(finish[17]));


always @* begin
    if (finish[0] == 1 && finish[1] == 1 && finish[2] == 1 && finish[3] == 1 && finish[4] == 1 && finish[5] == 1 && finish[6] == 1 && finish[7] == 1 && finish[8] == 1 && finish[9] == 1 && finish[10] == 1 && finish[11] == 1 && finish[12] == 1 && finish[13] == 1 && finish[14] == 1 && finish[15] == 1 && finish[16] == 1 && finish[17] == 1 ) begin
        finish_signal = 1;
    end else begin
        finish_signal = 0;
    end
end

relu #(
    .input_number(output_number),  
    .width(width)
    )U_relu0(
    .input_node(output_node) , 
    .output_node(activate_node)
    );


endmodule
