//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/11 16:43:10
// Design Name: 
// Module Name: vae
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


module vae(
    input clk,
    input rst_n, 
    input enable,
    input signed[9:0]input_node[0:1], 
    output signed[9:0] output_node [0:195],
    output finish
    );
    
wire finish_firstlayer; 
wire signed[9:0]latent_node[0:17]; 

decoder0 #(
    .output_number(18), 
    .input_number(2), 
    .width(10)) U_Decoder0(
    .clk(clk), 
    .rst_n(rst_n), 
    .input_node(input_node), 
    .enable(enable), 
    .activate_node(latent_node), 
    .finish_signal(finish_firstlayer)
    );

decoder2 #(
    .output_number(196), 
    .input_number(18), 
    .width(10)) U_Decoder2(
    .clk(clk), 
    .rst_n(rst_n), 
    .input_node(latent_node), 
    .enable(finish_firstlayer), 
    .activate_node(output_node), 
    .finish_signal(finish)
    );

    


endmodule
