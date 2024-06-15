`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/13 22:32:17
// Design Name: 
// Module Name: decoder2
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


module decoder2 #(
    parameter output_number=10, 
    parameter input_number=200, 
    parameter width=8)(
    input clk, 
    input rst_n, 
    input signed[width-1:0]input_node[0:input_number-1], 
    input enable, 
    output signed[width-1:0]activate_node[0:output_number-1], 
    output reg finish_signal
    );
    wire finish[0:output_number-1]; 
    wire signed[width-1:0]output_node[0:output_number-1];

    wire signed [width-1:0] bias16 = '{3};
    wire signed [width-1:0] bias17 = '{0};
    wire signed [width-1:0] bias18 = '{1};
    wire signed [width-1:0] bias19 = '{5};
    wire signed [width-1:0] bias20 = '{4};
    wire signed [width-1:0] bias21 = '{6};
    wire signed [width-1:0] bias22 = '{10};
    wire signed [width-1:0] bias23 = '{0};
    wire signed [width-1:0] bias24 = '{6};
    wire signed [width-1:0] bias25 = '{4};
    wire signed [width-1:0] bias26 = '{0};
    wire signed [width-1:0] bias27 = '{-7};
    wire signed [width-1:0] bias28 = '{1};
    wire signed [width-1:0] bias29 = '{1};
    wire signed [width-1:0] bias30 = '{4};
    wire signed [width-1:0] bias31 = '{4};
    wire signed [width-1:0] bias32 = '{-4};
    wire signed [width-1:0] bias33 = '{9};
    wire signed [width-1:0] bias34 = '{1};
    wire signed [width-1:0] bias35 = '{-9};
    wire signed [width-1:0] bias36 = '{-21};
    wire signed [width-1:0] bias37 = '{-28};
    wire signed [width-1:0] bias38 = '{-14};
    wire signed [width-1:0] bias39 = '{-9};
    wire signed [width-1:0] bias40 = '{-2};
    wire signed [width-1:0] bias41 = '{-7};
    wire signed [width-1:0] bias42 = '{-2};
    wire signed [width-1:0] bias43 = '{0};
    wire signed [width-1:0] bias44 = '{9};
    wire signed [width-1:0] bias45 = '{17};
    wire signed [width-1:0] bias46 = '{4};
    wire signed [width-1:0] bias47 = '{-1};
    wire signed [width-1:0] bias48 = '{-1};
    wire signed [width-1:0] bias49 = '{-1};
    wire signed [width-1:0] bias50 = '{-5};
    wire signed [width-1:0] bias51 = '{0};
    wire signed [width-1:0] bias52 = '{6};
    wire signed [width-1:0] bias53 = '{5};
    wire signed [width-1:0] bias54 = '{-1};
    wire signed [width-1:0] bias55 = '{-3};
    wire signed [width-1:0] bias56 = '{-22};
    wire signed [width-1:0] bias57 = '{-13};
    wire signed [width-1:0] bias58 = '{-2};
    wire signed [width-1:0] bias59 = '{4};
    wire signed [width-1:0] bias60 = '{0};
    wire signed [width-1:0] bias61 = '{6};
    wire signed [width-1:0] bias62 = '{8};
    wire signed [width-1:0] bias63 = '{6};
    wire signed [width-1:0] bias64 = '{-6};
    wire signed [width-1:0] bias65 = '{11};
    wire signed [width-1:0] bias66 = '{16};
    wire signed [width-1:0] bias67 = '{4};
    wire signed [width-1:0] bias68 = '{-2};
    wire signed [width-1:0] bias69 = '{0};
    wire signed [width-1:0] bias70 = '{-18};
    wire signed [width-1:0] bias71 = '{-7};
    wire signed [width-1:0] bias72 = '{-7};
    wire signed [width-1:0] bias73 = '{-7};
    wire signed [width-1:0] bias74 = '{0};
    wire signed [width-1:0] bias75 = '{7};
    wire signed [width-1:0] bias76 = '{5};
    wire signed [width-1:0] bias77 = '{-13};
    wire signed [width-1:0] bias78 = '{-7};
    wire signed [width-1:0] bias79 = '{13};
    wire signed [width-1:0] bias80 = '{9};
    wire signed [width-1:0] bias81 = '{-4};
    wire signed [width-1:0] bias82 = '{-8};
    wire signed [width-1:0] bias83 = '{-9};
    wire signed [width-1:0] bias84 = '{-22};
    wire signed [width-1:0] bias85 = '{-12};
    wire signed [width-1:0] bias86 = '{-4};
    wire signed [width-1:0] bias87 = '{-5};
    wire signed [width-1:0] bias88 = '{-2};
    wire signed [width-1:0] bias89 = '{6};
    wire signed [width-1:0] bias90 = '{-6};
    wire signed [width-1:0] bias91 = '{-16};
    wire signed [width-1:0] bias92 = '{8};
    wire signed [width-1:0] bias93 = '{11};
    wire signed [width-1:0] bias94 = '{6};
    wire signed [width-1:0] bias95 = '{2};
    wire signed [width-1:0] bias96 = '{-3};
    wire signed [width-1:0] bias97 = '{-2};
    wire signed [width-1:0] bias98 = '{1};
    wire signed [width-1:0] bias99 = '{-22};
    wire signed [width-1:0] bias100 = '{-5};
    wire signed [width-1:0] bias101 = '{0};
    wire signed [width-1:0] bias102 = '{7};
    wire signed [width-1:0] bias103 = '{-5};
    wire signed [width-1:0] bias104 = '{-12};
    wire signed [width-1:0] bias105 = '{9};
    wire signed [width-1:0] bias106 = '{13};
    wire signed [width-1:0] bias107 = '{14};
    wire signed [width-1:0] bias108 = '{5};
    wire signed [width-1:0] bias109 = '{1};
    wire signed [width-1:0] bias110 = '{-3};
    wire signed [width-1:0] bias111 = '{-5};
    wire signed [width-1:0] bias112 = '{-9};
    wire signed [width-1:0] bias113 = '{-3};
    wire signed [width-1:0] bias114 = '{-7};
    wire signed [width-1:0] bias115 = '{4};
    wire signed [width-1:0] bias116 = '{0};
    wire signed [width-1:0] bias117 = '{-4};
    wire signed [width-1:0] bias118 = '{1};
    wire signed [width-1:0] bias119 = '{29};
    wire signed [width-1:0] bias120 = '{3};
    wire signed [width-1:0] bias121 = '{-3};
    wire signed [width-1:0] bias122 = '{0};
    wire signed [width-1:0] bias123 = '{0};
    wire signed [width-1:0] bias124 = '{5};
    wire signed [width-1:0] bias125 = '{-4};
    wire signed [width-1:0] bias126 = '{-8};
    wire signed [width-1:0] bias127 = '{0};
    wire signed [width-1:0] bias128 = '{-5};
    wire signed [width-1:0] bias129 = '{-1};
    wire signed [width-1:0] bias130 = '{9};
    wire signed [width-1:0] bias131 = '{7};
    wire signed [width-1:0] bias132 = '{18};
    wire signed [width-1:0] bias133 = '{41};
    wire signed [width-1:0] bias134 = '{-7};
    wire signed [width-1:0] bias135 = '{-3};
    wire signed [width-1:0] bias136 = '{10};
    wire signed [width-1:0] bias137 = '{12};
    wire signed [width-1:0] bias138 = '{8};
    wire signed [width-1:0] bias139 = '{6};
    wire signed [width-1:0] bias140 = '{3};
    wire signed [width-1:0] bias141 = '{1};
    wire signed [width-1:0] bias142 = '{-2};
    wire signed [width-1:0] bias143 = '{9};
    wire signed [width-1:0] bias144 = '{8};
    wire signed [width-1:0] bias145 = '{26};
    wire signed [width-1:0] bias146 = '{43};
    wire signed [width-1:0] bias147 = '{23};
    wire signed [width-1:0] bias148 = '{-25};
    wire signed [width-1:0] bias149 = '{0};
    wire signed [width-1:0] bias150 = '{3};
    wire signed [width-1:0] bias151 = '{12};
    wire signed [width-1:0] bias152 = '{1};
    wire signed [width-1:0] bias153 = '{-1};
    wire signed [width-1:0] bias154 = '{-4};
    wire signed [width-1:0] bias155 = '{-3};
    wire signed [width-1:0] bias156 = '{-11};
    wire signed [width-1:0] bias157 = '{-10};
    wire signed [width-1:0] bias158 = '{3};
    wire signed [width-1:0] bias159 = '{21};
    wire signed [width-1:0] bias160 = '{13};
    wire signed [width-1:0] bias161 = '{-7};
    wire signed [width-1:0] bias162 = '{-23};
    wire signed [width-1:0] bias163 = '{-8};
    wire signed [width-1:0] bias164 = '{3};
    wire signed [width-1:0] bias165 = '{1};
    wire signed [width-1:0] bias166 = '{-2};
    wire signed [width-1:0] bias167 = '{-4};
    wire signed [width-1:0] bias168 = '{-7};
    wire signed [width-1:0] bias169 = '{-7};
    wire signed [width-1:0] bias170 = '{-8};
    wire signed [width-1:0] bias171 = '{-3};
    wire signed [width-1:0] bias172 = '{1};
    wire signed [width-1:0] bias173 = '{5};
    wire signed [width-1:0] bias174 = '{1};
    wire signed [width-1:0] bias175 = '{-8};
    wire signed [width-1:0] bias176 = '{-19};
    wire signed [width-1:0] bias177 = '{-9};
    wire signed [width-1:0] bias178 = '{-11};
    wire signed [width-1:0] bias179 = '{-11};



wire signed [width-1:0] weight16 [0:input_number-1]= '{-20,-7,-50,9,-17,0,2,-9,-50,-2,-57,1,-25,6,-21,-18,18,0};
wire signed [width-1:0] weight17 [0:input_number-1]= '{-14,-15,-42,8,-111,4,-4,-1,-21,-11,-115,-4,-23,8,2,-13,36,-7};
wire signed [width-1:0] weight18 [0:input_number-1]= '{-48,-9,-29,6,-128,0,4,-3,-52,-6,-109,6,-42,-99,9,-6,19,2};
wire signed [width-1:0] weight19 [0:input_number-1]= '{-71,-8,-14,0,-115,6,13,1,-63,-6,-72,-4,-51,-128,11,-2,-16,0};
wire signed [width-1:0] weight20 [0:input_number-1]= '{0,2,-7,-42,-81,11,42,-3,55,0,-44,-6,-54,-128,24,4,6,-1};
wire signed [width-1:0] weight21 [0:input_number-1]= '{2,-1,-1,-98,-65,11,37,-1,57,9,-37,-3,-57,-128,33,7,-7,13};
wire signed [width-1:0] weight22 [0:input_number-1]= '{-7,-5,8,-111,-55,7,32,-1,46,-1,-22,-4,-53,-123,37,8,9,1};
wire signed [width-1:0] weight23 [0:input_number-1]= '{-7,-5,-1,-94,-38,2,55,-5,30,0,-9,-2,-60,-102,23,20,9,-10};
wire signed [width-1:0] weight24 [0:input_number-1]= '{2,-9,0,-51,-22,2,92,-4,-17,0,-8,0,-57,-64,-7,19,-19,-28};
wire signed [width-1:0] weight25 [0:input_number-1]= '{-7,0,-18,-39,-18,0,56,-1,-4,3,-8,0,-47,-28,-28,14,-25,-18};
wire signed [width-1:0] weight26 [0:input_number-1]= '{-16,-13,-27,-18,-17,-2,20,5,-16,4,-13,-7,-33,-3,-44,6,-13,-16};
wire signed [width-1:0] weight27 [0:input_number-1]= '{-2,-11,-50,-128,-37,-13,-104,-10,-63,-9,-3,4,-20,11,-72,-4,0,-69};
wire signed [width-1:0] weight28 [0:input_number-1]= '{-12,-16,-47,-12,-128,-7,-128,-4,-8,-9,-11,-2,2,-128,-52,-24,-128,-12};
wire signed [width-1:0] weight29 [0:input_number-1]= '{-5,-8,-40,15,-22,-8,-12,-4,-8,-10,-19,0,-11,17,-18,-16,15,-11};
wire signed [width-1:0] weight30 [0:input_number-1]= '{-26,-9,-17,1,-58,0,-29,-8,-5,1,-31,0,-2,75,0,-67,40,-3};
wire signed [width-1:0] weight31 [0:input_number-1]= '{-29,0,-8,-4,-59,0,-40,0,25,-5,-27,5,0,47,9,-69,72,6};
wire signed [width-1:0] weight32 [0:input_number-1]= '{-27,-1,-5,-18,-55,10,-41,6,41,-4,-10,2,-2,18,19,-60,37,6};
wire signed [width-1:0] weight33 [0:input_number-1]= '{-23,6,6,-50,-32,7,-29,9,52,3,-4,2,-8,-16,27,-55,1,19};
wire signed [width-1:0] weight34 [0:input_number-1]= '{-21,6,9,-104,-26,16,-22,9,47,9,-10,-7,10,-38,49,-49,-18,16};
wire signed [width-1:0] weight35 [0:input_number-1]= '{-28,10,9,-89,-35,0,-36,12,33,-1,4,1,28,-18,61,-28,-5,-12};
wire signed [width-1:0] weight36 [0:input_number-1]= '{-28,-4,-15,-45,-32,-19,-40,8,13,-14,9,-2,56,-28,54,20,-14,-30};
wire signed [width-1:0] weight37 [0:input_number-1]= '{-12,-13,-18,-19,-18,-28,-30,-9,-21,-25,6,-2,59,-35,40,43,-25,-18};
wire signed [width-1:0] weight38 [0:input_number-1]= '{3,-22,-9,-3,0,-32,-14,-8,-76,-31,17,3,32,-22,20,38,-29,-8};
wire signed [width-1:0] weight39 [0:input_number-1]= '{11,-21,-16,11,16,-19,-8,-12,-128,-10,16,1,12,-7,-11,24,-26,-7};
wire signed [width-1:0] weight40 [0:input_number-1]= '{0,0,-8,29,16,-12,-11,-6,-128,-9,4,-1,0,0,-44,7,-20,-11};
wire signed [width-1:0] weight41 [0:input_number-1]= '{-9,-16,-28,11,-3,-11,-16,2,-120,-4,-1,4,3,10,-56,0,-3,-8};
wire signed [width-1:0] weight42 [0:input_number-1]= '{-17,-15,-44,4,-128,-19,10,-12,15,-11,-15,-4,1,-128,-48,2,-17,0};
wire signed [width-1:0] weight43 [0:input_number-1]= '{-12,-6,-25,7,-56,-2,2,-2,42,-1,-26,-7,-9,58,-18,-47,-9,-1};
wire signed [width-1:0] weight44 [0:input_number-1]= '{-1,8,-10,4,-28,10,-18,-4,59,3,-26,2,-8,80,-7,-104,-45,-1};
wire signed [width-1:0] weight45 [0:input_number-1]= '{1,2,7,-4,-28,15,-22,0,56,1,-16,0,-14,51,4,-101,-44,3};
wire signed [width-1:0] weight46 [0:input_number-1]= '{-7,8,-4,-7,0,16,-33,7,46,7,-6,0,-6,9,1,-67,-21,15};
wire signed [width-1:0] weight47 [0:input_number-1]= '{-22,7,9,-27,33,7,-22,11,32,8,7,-1,1,-28,8,-39,-16,14};
wire signed [width-1:0] weight48 [0:input_number-1]= '{-32,3,0,-72,33,11,-12,17,25,12,8,6,15,-17,16,-23,-6,24};
wire signed [width-1:0] weight49 [0:input_number-1]= '{-33,-2,-12,-52,11,12,-30,10,23,1,10,-7,41,19,22,-11,0,-3};
wire signed [width-1:0] weight50 [0:input_number-1]= '{-16,-13,-10,7,26,2,-58,3,12,-10,11,-2,51,13,6,9,-14,-17};
wire signed [width-1:0] weight51 [0:input_number-1]= '{14,-17,-16,12,37,-13,-45,-10,-28,-3,3,-3,38,1,-3,23,-31,7};
wire signed [width-1:0] weight52 [0:input_number-1]= '{28,-11,-23,26,44,-10,-31,-8,-79,-12,5,4,24,7,-17,27,-42,0};
wire signed [width-1:0] weight53 [0:input_number-1]= '{11,-19,-13,29,61,-8,-21,-10,-128,-5,14,-5,14,17,-35,12,-25,-4};
wire signed [width-1:0] weight54 [0:input_number-1]= '{-2,-7,-15,39,51,-11,-25,0,-128,0,9,4,9,27,-60,5,-17,-1};
wire signed [width-1:0] weight55 [0:input_number-1]= '{-14,-4,-21,22,9,-4,-6,-10,-128,-1,-4,2,9,26,-71,-2,-10,-3};
wire signed [width-1:0] weight56 [0:input_number-1]= '{-21,-23,-64,22,-61,-20,22,-15,22,-18,-24,-1,6,25,-38,11,6,-2};
wire signed [width-1:0] weight57 [0:input_number-1]= '{-12,4,-15,18,-11,-1,3,-4,49,-5,-25,2,-3,73,-19,-70,-98,-11};
wire signed [width-1:0] weight58 [0:input_number-1]= '{5,6,0,6,-2,0,-8,2,53,0,-25,5,-12,64,-6,-111,-82,4};
wire signed [width-1:0] weight59 [0:input_number-1]= '{14,5,-9,5,10,13,-10,2,33,0,-14,-4,-16,44,-4,-72,-50,13};
wire signed [width-1:0] weight60 [0:input_number-1]= '{4,12,-8,19,53,16,-7,0,11,-3,1,-7,-11,-14,-15,-27,-29,10};
wire signed [width-1:0] weight61 [0:input_number-1]= '{14,4,-1,-13,63,21,13,0,-11,3,0,-6,-14,-22,-22,-3,-41,28};
wire signed [width-1:0] weight62 [0:input_number-1]= '{7,-8,-18,-54,45,30,17,11,-7,7,-14,-5,4,-3,-15,7,-18,28};
wire signed [width-1:0] weight63 [0:input_number-1]= '{-10,-13,-2,0,26,10,-9,11,18,10,-16,0,25,25,-13,-2,6,-21};
wire signed [width-1:0] weight64 [0:input_number-1]= '{5,-2,7,61,22,-9,-37,-7,10,2,0,-5,16,32,-24,3,-13,-13};
wire signed [width-1:0] weight65 [0:input_number-1]= '{36,-5,-9,43,51,4,-27,0,-30,-3,-4,3,-4,7,-39,13,-29,25};
wire signed [width-1:0] weight66 [0:input_number-1]= '{52,-18,-27,41,76,9,-24,4,-71,-1,-12,5,-3,15,-49,24,-47,21};
wire signed [width-1:0] weight67 [0:input_number-1]= '{31,-28,-29,41,71,7,-21,-1,-112,2,8,-4,0,43,-48,11,-31,1};
wire signed [width-1:0] weight68 [0:input_number-1]= '{7,-26,-11,38,65,2,-22,-14,-128,-4,19,1,-2,48,-52,-8,-5,3};
wire signed [width-1:0] weight69 [0:input_number-1]= '{-3,-14,-18,28,4,-9,3,0,-128,-3,-7,-6,-2,24,-74,0,-9,-6};
wire signed [width-1:0] weight70 [0:input_number-1]= '{-24,-32,-73,23,-128,-19,30,-13,22,-21,-23,3,4,13,-38,0,5,-5};
wire signed [width-1:0] weight71 [0:input_number-1]= '{-1,-1,-30,29,-3,-12,13,-8,23,-3,-25,-2,-6,36,-30,-25,-93,-3};
wire signed [width-1:0] weight72 [0:input_number-1]= '{24,-7,-26,19,13,0,2,-2,14,0,-31,5,-1,45,-8,-51,-80,-7};
wire signed [width-1:0] weight73 [0:input_number-1]= '{31,-5,-19,28,37,9,1,-5,-11,-7,-18,1,-10,26,-16,-24,-48,12};
wire signed [width-1:0] weight74 [0:input_number-1]= '{20,11,-8,24,74,12,22,0,-33,6,-5,-4,-22,-8,-31,-6,-35,11};
wire signed [width-1:0] weight75 [0:input_number-1]= '{12,5,2,-27,51,15,18,7,-27,6,-21,-7,0,9,-20,0,-31,19};
wire signed [width-1:0] weight76 [0:input_number-1]= '{-23,-13,-11,-40,20,18,-3,18,12,8,0,2,13,25,-11,0,10,8};
wire signed [width-1:0] weight77 [0:input_number-1]= '{-26,-4,7,22,-16,-11,-39,-5,40,-9,9,-4,29,43,3,-2,11,-16};
wire signed [width-1:0] weight78 [0:input_number-1]= '{10,0,3,45,-3,-9,-33,0,7,-7,0,-4,6,13,-18,6,-10,9};
wire signed [width-1:0] weight79 [0:input_number-1]= '{53,-4,-10,33,29,15,2,-1,-46,6,-15,2,-26,-20,-42,15,-35,30};
wire signed [width-1:0] weight80 [0:input_number-1]= '{68,-25,-19,33,66,18,0,7,-70,0,-32,4,-20,-15,-47,28,-52,25};
wire signed [width-1:0] weight81 [0:input_number-1]= '{57,-30,-33,36,47,12,-10,-8,-89,-5,-13,0,-3,34,-30,16,-44,3};
wire signed [width-1:0] weight82 [0:input_number-1]= '{20,-23,-38,22,34,-5,-9,-8,-128,-5,12,6,-3,37,-21,2,-7,-2};
wire signed [width-1:0] weight83 [0:input_number-1]= '{-3,-18,-31,22,-18,-5,0,-5,-47,-4,0,3,-8,12,-47,-1,7,-8};
wire signed [width-1:0] weight84 [0:input_number-1]= '{-24,-27,-78,21,-21,-18,26,-6,16,-9,-17,4,0,18,-35,-21,-8,-5};
wire signed [width-1:0] weight85 [0:input_number-1]= '{2,-10,-43,27,-15,-14,27,-12,3,-4,-38,1,-2,36,-26,-2,-20,-4};
wire signed [width-1:0] weight86 [0:input_number-1]= '{34,-5,-41,28,23,-1,20,-3,-31,-15,-23,-3,-7,23,-7,-11,-45,-11};
wire signed [width-1:0] weight87 [0:input_number-1]= '{40,0,-29,45,52,5,17,-6,-58,-5,-21,-6,-11,14,-25,3,-37,1};
wire signed [width-1:0] weight88 [0:input_number-1]= '{18,22,0,5,53,11,30,10,-47,4,-28,0,-8,23,-20,-10,-28,-1};
wire signed [width-1:0] weight89 [0:input_number-1]= '{-20,18,9,-25,22,20,1,5,-2,4,-7,4,5,37,-15,-16,0,9};
wire signed [width-1:0] weight90 [0:input_number-1]= '{-35,-2,6,-29,-25,0,-33,5,21,0,12,4,24,47,7,-12,19,11};
wire signed [width-1:0] weight91 [0:input_number-1]= '{-29,13,21,8,-35,-21,-40,9,33,-8,13,-7,20,25,15,-16,23,-10};
wire signed [width-1:0] weight92 [0:input_number-1]= '{17,1,14,15,-19,7,-2,0,-12,11,-2,-5,-17,-20,-21,-3,-7,16};
wire signed [width-1:0] weight93 [0:input_number-1]= '{54,12,-1,24,14,16,24,7,-47,11,-45,-6,-24,-45,-37,18,-44,14};
wire signed [width-1:0] weight94 [0:input_number-1]= '{72,-3,-18,20,37,11,21,12,-64,2,-60,6,-17,-22,-29,28,-61,9};
wire signed [width-1:0] weight95 [0:input_number-1]= '{68,-13,-41,24,26,4,11,-10,-69,-4,-30,-1,-15,23,-10,14,-46,0};
wire signed [width-1:0] weight96 [0:input_number-1]= '{44,-23,-50,17,2,-8,14,-3,-58,-4,-22,5,-13,19,0,8,-15,-12};
wire signed [width-1:0] weight97 [0:input_number-1]= '{-4,-12,-40,10,-30,-6,17,-1,-16,-5,-17,-1,-17,8,-22,-11,21,-9};
wire signed [width-1:0] weight98 [0:input_number-1]= '{-33,-23,-60,-1,-128,-1,9,-5,0,-7,-9,-7,-3,-128,-35,-7,-70,-3};
wire signed [width-1:0] weight99 [0:input_number-1]= '{-7,-6,-57,22,-18,-13,30,-5,-11,-13,-39,0,2,-9,-20,26,-8,-4};
wire signed [width-1:0] weight100 [0:input_number-1]= '{36,-7,-50,22,26,-2,32,-9,-69,-11,-18,0,-7,0,-7,16,-24,-7};
wire signed [width-1:0] weight101 [0:input_number-1]= '{50,-11,-26,29,45,7,41,-5,-92,-1,-32,-2,-17,-1,-20,19,-42,0};
wire signed [width-1:0] weight102 [0:input_number-1]= '{25,13,0,-2,22,8,49,6,-60,11,-38,7,-14,1,-13,2,-26,-5};
wire signed [width-1:0] weight103 [0:input_number-1]= '{-7,18,6,-16,-16,9,24,4,-25,4,-4,3,-6,2,-1,-3,3,-1};
wire signed [width-1:0] weight104 [0:input_number-1]= '{-16,9,16,-14,-42,-12,4,9,-12,6,2,-1,5,1,12,-9,25,-5};
wire signed [width-1:0] weight105 [0:input_number-1]= '{-5,14,23,-23,-44,-2,21,16,-16,12,-15,0,-5,-14,7,-19,39,-5};
wire signed [width-1:0] weight106 [0:input_number-1]= '{6,14,23,7,-19,9,24,6,-15,12,-12,2,-17,-29,-22,-1,-10,2};
wire signed [width-1:0] weight107 [0:input_number-1]= '{11,22,3,10,4,6,23,9,-19,9,-29,6,-11,-13,-25,11,-49,3};
wire signed [width-1:0] weight108 [0:input_number-1]= '{34,4,-10,1,11,8,15,4,-25,6,-51,3,-5,22,-11,10,-65,5};
wire signed [width-1:0] weight109 [0:input_number-1]= '{46,1,-30,12,17,1,17,-4,-37,-4,-30,-1,-23,16,0,0,-28,3};
wire signed [width-1:0] weight110 [0:input_number-1]= '{38,-8,-37,4,-8,0,27,-9,-33,-8,-34,6,-20,6,9,-7,-1,-9};
wire signed [width-1:0] weight111 [0:input_number-1]= '{-1,-7,-34,1,-68,-4,7,-14,-21,-1,-53,-5,-14,-47,-7,-21,18,0};
wire signed [width-1:0] weight112 [0:input_number-1]= '{-4,-19,-43,-4,-24,-15,0,-9,15,-15,-9,0,-6,-32,-38,3,1,-14};
wire signed [width-1:0] weight113 [0:input_number-1]= '{-10,-15,-24,10,-5,-11,36,-5,-33,-2,-25,-6,-12,-33,-23,25,-31,-6};
wire signed [width-1:0] weight114 [0:input_number-1]= '{22,-13,-33,18,18,-6,29,-11,-77,-15,-1,-6,-13,-9,-2,28,-29,-6};
wire signed [width-1:0] weight115 [0:input_number-1]= '{52,-13,-25,24,26,2,36,6,-102,-9,-30,-2,-19,-10,-11,33,-47,-5};
wire signed [width-1:0] weight116 [0:input_number-1]= '{47,0,-13,-2,-15,7,51,4,-78,-2,-34,0,-23,-42,1,32,-35,0};
wire signed [width-1:0] weight117 [0:input_number-1]= '{20,4,-7,-15,-56,-4,43,1,-54,1,-12,-7,-11,-49,19,22,-2,-8};
wire signed [width-1:0] weight118 [0:input_number-1]= '{17,5,8,-27,-73,-8,46,3,-55,0,-20,-5,-5,-35,29,2,26,-15};
wire signed [width-1:0] weight119 [0:input_number-1]= '{29,13,21,-38,-27,31,63,28,-44,24,-60,1,-24,-12,-11,-32,38,-17};
wire signed [width-1:0] weight120 [0:input_number-1]= '{2,10,2,8,-1,17,28,12,-1,12,-20,1,-5,-8,-29,8,-26,-6};
wire signed [width-1:0] weight121 [0:input_number-1]= '{-25,10,-7,2,-8,8,6,3,9,4,-6,0,12,22,-10,16,-69,-5};
wire signed [width-1:0] weight122 [0:input_number-1]= '{-4,-1,-9,-20,-7,13,0,2,16,-1,-34,1,4,41,6,-3,-58,10};
wire signed [width-1:0] weight123 [0:input_number-1]= '{25,0,-19,-2,0,6,8,4,0,1,-31,-5,-27,27,6,-20,-10,5};
wire signed [width-1:0] weight124 [0:input_number-1]= '{22,0,-31,-1,-21,3,13,-3,0,-8,-38,0,-30,4,8,-23,19,4};
wire signed [width-1:0] weight125 [0:input_number-1]= '{-22,-2,-23,1,-97,-1,8,0,2,-7,-54,-5,-27,-105,-9,-22,21,1};
wire signed [width-1:0] weight126 [0:input_number-1]= '{-5,-7,-42,0,-49,-17,-11,-8,16,-4,-11,-2,-3,-30,-42,-9,3,-8};
wire signed [width-1:0] weight127 [0:input_number-1]= '{4,-8,-23,8,14,-1,-27,0,-11,-1,-9,0,-8,-30,-31,18,-45,3};
wire signed [width-1:0] weight128 [0:input_number-1]= '{8,-26,-42,21,0,-15,-37,-2,-40,-7,-11,4,22,6,-1,38,-30,-4};
wire signed [width-1:0] weight129 [0:input_number-1]= '{29,-24,-38,13,6,-2,-32,-1,-84,-9,-20,5,15,13,-1,36,-32,10};
wire signed [width-1:0] weight130 [0:input_number-1]= '{36,-9,-16,-16,-23,-1,4,1,-75,4,-21,0,-16,-29,11,22,-11,16};
wire signed [width-1:0] weight131 [0:input_number-1]= '{32,0,2,-35,-63,-5,26,-1,-60,1,-22,0,-15,-35,32,9,12,3};
wire signed [width-1:0] weight132 [0:input_number-1]= '{47,6,17,-32,-50,6,44,10,-52,22,-46,5,-28,2,12,-21,22,-13};
wire signed [width-1:0] weight133 [0:input_number-1]= '{52,4,7,-33,-5,43,45,23,-22,30,-66,2,-30,11,-27,-23,0,-5};
wire signed [width-1:0] weight134 [0:input_number-1]= '{-2,1,-8,-25,-19,6,17,0,13,-3,-13,0,17,-2,5,32,-57,6};
wire signed [width-1:0] weight135 [0:input_number-1]= '{-51,-2,-18,-24,-10,0,-15,10,47,0,-4,-6,29,14,10,23,-76,10};
wire signed [width-1:0] weight136 [0:input_number-1]= '{-42,3,-12,-25,-20,7,-18,2,74,-2,-10,3,-6,34,21,-22,-28,16};
wire signed [width-1:0] weight137 [0:input_number-1]= '{-1,6,-15,-21,-28,3,-15,7,34,-1,-50,3,-18,35,21,-45,31,11};
wire signed [width-1:0] weight138 [0:input_number-1]= '{11,-2,-20,-14,-46,0,-9,2,16,2,-64,-1,-24,0,13,-42,41,6};
wire signed [width-1:0] weight139 [0:input_number-1]= '{6,-3,-29,1,-128,-2,-16,-9,20,-1,-50,-5,-31,-128,-6,-27,27,4};
wire signed [width-1:0] weight140 [0:input_number-1]= '{-13,-8,-36,-4,-24,-15,-25,0,12,-8,-15,0,-4,-18,-37,-8,-14,-5};
wire signed [width-1:0] weight141 [0:input_number-1]= '{7,-3,-25,2,17,-2,-128,3,0,1,-7,-6,7,-17,-31,9,-56,-2};
wire signed [width-1:0] weight142 [0:input_number-1]= '{16,-24,-21,26,-4,-9,-128,-3,-63,-21,-7,-5,33,37,-6,23,-43,-2};
wire signed [width-1:0] weight143 [0:input_number-1]= '{34,-18,-30,13,0,-1,-128,-5,-122,-20,-25,-1,48,66,-1,19,-37,15};
wire signed [width-1:0] weight144 [0:input_number-1]= '{30,-8,-14,-14,-6,3,-88,-5,-78,-7,-20,1,33,48,15,1,-9,10};
wire signed [width-1:0] weight145 [0:input_number-1]= '{33,13,12,-25,-21,4,-24,4,-33,7,-22,2,-12,22,13,-17,4,4};
wire signed [width-1:0] weight146 [0:input_number-1]= '{35,6,14,-7,5,27,-3,20,-3,30,-37,4,-18,15,-15,-25,-5,-32};
wire signed [width-1:0] weight147 [0:input_number-1]= '{25,-3,-4,-23,0,32,-8,5,27,6,-10,1,-9,28,-11,0,-45,10};
wire signed [width-1:0] weight148 [0:input_number-1]= '{-49,-10,-17,-36,1,-5,-26,0,49,-3,26,-5,41,-11,23,23,-37,14};
wire signed [width-1:0] weight149 [0:input_number-1]= '{-93,2,-16,-34,7,11,-22,0,84,-4,25,5,25,-4,24,-18,1,0};
wire signed [width-1:0] weight150 [0:input_number-1]= '{-78,0,-13,-14,-18,17,-17,-2,77,5,3,0,-10,17,15,-40,-1,1};
wire signed [width-1:0] weight151 [0:input_number-1]= '{-18,5,-9,-12,-42,3,-18,-1,23,3,-42,-4,-16,21,18,-55,41,0};
wire signed [width-1:0] weight152 [0:input_number-1]= '{0,12,-8,-6,-68,0,-19,-4,9,2,-66,-7,-26,-9,8,-51,52,5};
wire signed [width-1:0] weight153 [0:input_number-1]= '{13,-10,-39,6,-64,-4,-34,-1,20,-8,-51,0,-18,-8,-12,-19,28,1};
wire signed [width-1:0] weight154 [0:input_number-1]= '{-4,-17,-56,-9,-128,-18,-33,-14,14,-2,-8,-2,-1,-128,-47,-10,8,-21};
wire signed [width-1:0] weight155 [0:input_number-1]= '{3,-9,-16,-5,18,-9,-128,0,-44,5,10,-2,9,-6,-29,-9,-59,0};
wire signed [width-1:0] weight156 [0:input_number-1]= '{17,-14,-23,21,-1,-22,-128,-3,-128,-19,0,1,40,42,-4,14,-39,0};
wire signed [width-1:0] weight157 [0:input_number-1]= '{31,-22,-13,13,-2,-15,-128,-9,-125,-9,-5,7,56,76,0,3,-39,1};
wire signed [width-1:0] weight158 [0:input_number-1]= '{32,-1,-6,0,33,-1,-128,-1,-73,-6,-7,-6,59,86,-6,-18,-30,4};
wire signed [width-1:0] weight159 [0:input_number-1]= '{9,3,0,16,69,18,-128,9,9,7,21,-4,41,83,-28,-37,-30,-13};
wire signed [width-1:0] weight160 [0:input_number-1]= '{-10,12,9,14,62,19,-90,0,34,13,37,-6,22,75,-24,-45,-28,-17};
wire signed [width-1:0] weight161 [0:input_number-1]= '{-50,-1,5,2,54,8,-61,-2,68,-6,56,5,24,28,-7,-21,-28,0};
wire signed [width-1:0] weight162 [0:input_number-1]= '{-89,11,-3,-26,42,0,-20,3,61,-16,47,5,37,-19,21,-24,-2,-9};
wire signed [width-1:0] weight163 [0:input_number-1]= '{-107,12,0,-22,25,3,4,-6,70,0,27,-5,8,-25,14,-46,51,-5};
wire signed [width-1:0] weight164 [0:input_number-1]= '{-91,6,-8,-7,-4,7,4,0,33,-3,-14,-7,-4,-16,4,-43,57,-1};
wire signed [width-1:0] weight165 [0:input_number-1]= '{-4,5,-10,2,-36,6,0,-1,-15,-6,-51,-1,-12,-10,0,-40,51,-1};
wire signed [width-1:0] weight166 [0:input_number-1]= '{24,0,-26,2,-77,0,-11,-8,1,1,-62,-2,-20,-2,-1,-38,42,3};
wire signed [width-1:0] weight167 [0:input_number-1]= '{4,-15,-36,0,9,-18,-17,-4,7,-8,-17,-5,-12,-23,-21,-14,12,-6};
wire signed [width-1:0] weight168 [0:input_number-1]= '{-12,-28,-95,-25,-62,-29,-10,-6,-3,-18,-37,0,-6,-24,-76,-49,-14,-13};
wire signed [width-1:0] weight169 [0:input_number-1]= '{1,-12,-27,4,-128,-9,-70,3,-128,1,0,-5,0,-29,-42,-21,-12,2};
wire signed [width-1:0] weight170 [0:input_number-1]= '{10,-15,-24,33,28,-12,-75,-6,-128,-11,7,0,20,22,-34,-10,-4,-6};
wire signed [width-1:0] weight171 [0:input_number-1]= '{14,-19,-13,23,57,-15,-81,-2,-127,-11,15,-5,33,59,-30,-21,-11,-3};
wire signed [width-1:0] weight172 [0:input_number-1]= '{19,-4,-5,16,71,2,-88,-2,-65,-9,13,-2,33,83,-34,-44,-12,-3};
wire signed [width-1:0] weight173 [0:input_number-1]= '{17,11,10,32,78,2,-79,-5,-24,2,20,7,18,101,-39,-65,-18,-13};
wire signed [width-1:0] weight174 [0:input_number-1]= '{4,11,17,48,65,-10,-59,0,7,0,30,-4,6,96,-33,-62,-27,-18};
wire signed [width-1:0] weight175 [0:input_number-1]= '{-27,19,5,20,53,-11,-24,-10,30,-1,25,4,14,46,-15,-53,-24,-7};
wire signed [width-1:0] weight176 [0:input_number-1]= '{-73,14,10,-8,49,-10,19,-10,41,-7,20,-3,20,16,5,-66,-1,-19};
wire signed [width-1:0] weight177 [0:input_number-1]= '{-95,11,-5,9,46,-12,25,-1,43,-5,-2,2,6,22,-11,-72,81,-8};
wire signed [width-1:0] weight178 [0:input_number-1]= '{-58,4,-26,20,2,-11,20,-6,-5,-12,-34,3,7,23,-11,-41,71,-2};
wire signed [width-1:0] weight179 [0:input_number-1]= '{12,-10,-41,20,-45,-14,19,-11,-53,-5,-46,2,0,1,-3,-20,41,-10};






//nnsingle #( .input_number(input_number), .width(width)) U_layer1_0 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias0), .weight(weight0), .sum(output_node[0]), .finish(finish[0]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_1 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias1), .weight(weight1), .sum(output_node[1]), .finish(finish[1]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_2 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias2), .weight(weight2), .sum(output_node[2]), .finish(finish[2]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_3 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias3), .weight(weight3), .sum(output_node[3]), .finish(finish[3]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_4 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias4), .weight(weight4), .sum(output_node[4]), .finish(finish[4]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_5 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias5), .weight(weight5), .sum(output_node[5]), .finish(finish[5]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_6 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias6), .weight(weight6), .sum(output_node[6]), .finish(finish[6]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_7 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias7), .weight(weight7), .sum(output_node[7]), .finish(finish[7]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_8 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias8), .weight(weight8), .sum(output_node[8]), .finish(finish[8]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_9 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias9), .weight(weight9), .sum(output_node[9]), .finish(finish[9]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_10 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias10), .weight(weight10), .sum(output_node[10]), .finish(finish[10]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_11 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias11), .weight(weight11), .sum(output_node[11]), .finish(finish[11]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_12 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias12), .weight(weight12), .sum(output_node[12]), .finish(finish[12]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_13 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias13), .weight(weight13), .sum(output_node[13]), .finish(finish[13]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_14 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias14), .weight(weight14), .sum(output_node[14]), .finish(finish[14]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_15 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias15), .weight(weight15), .sum(output_node[15]), .finish(finish[15]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_16 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias16), .weight(weight16), .sum(output_node[16]), .finish(finish[16]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_17 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias17), .weight(weight17), .sum(output_node[17]), .finish(finish[17]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_18 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias18), .weight(weight18), .sum(output_node[18]), .finish(finish[18]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_19 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias19), .weight(weight19), .sum(output_node[19]), .finish(finish[19]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_20 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias20), .weight(weight20), .sum(output_node[20]), .finish(finish[20]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_21 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias21), .weight(weight21), .sum(output_node[21]), .finish(finish[21]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_22 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias22), .weight(weight22), .sum(output_node[22]), .finish(finish[22]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_23 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias23), .weight(weight23), .sum(output_node[23]), .finish(finish[23]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_24 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias24), .weight(weight24), .sum(output_node[24]), .finish(finish[24]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_25 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias25), .weight(weight25), .sum(output_node[25]), .finish(finish[25]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_26 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias26), .weight(weight26), .sum(output_node[26]), .finish(finish[26]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_27 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias27), .weight(weight27), .sum(output_node[27]), .finish(finish[27]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_28 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias28), .weight(weight28), .sum(output_node[28]), .finish(finish[28]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_29 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias29), .weight(weight29), .sum(output_node[29]), .finish(finish[29]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_30 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias30), .weight(weight30), .sum(output_node[30]), .finish(finish[30]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_31 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias31), .weight(weight31), .sum(output_node[31]), .finish(finish[31]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_32 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias32), .weight(weight32), .sum(output_node[32]), .finish(finish[32]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_33 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias33), .weight(weight33), .sum(output_node[33]), .finish(finish[33]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_34 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias34), .weight(weight34), .sum(output_node[34]), .finish(finish[34]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_35 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias35), .weight(weight35), .sum(output_node[35]), .finish(finish[35]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_36 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias36), .weight(weight36), .sum(output_node[36]), .finish(finish[36]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_37 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias37), .weight(weight37), .sum(output_node[37]), .finish(finish[37]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_38 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias38), .weight(weight38), .sum(output_node[38]), .finish(finish[38]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_39 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias39), .weight(weight39), .sum(output_node[39]), .finish(finish[39]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_40 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias40), .weight(weight40), .sum(output_node[40]), .finish(finish[40]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_41 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias41), .weight(weight41), .sum(output_node[41]), .finish(finish[41]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_42 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias42), .weight(weight42), .sum(output_node[42]), .finish(finish[42]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_43 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias43), .weight(weight43), .sum(output_node[43]), .finish(finish[43]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_44 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias44), .weight(weight44), .sum(output_node[44]), .finish(finish[44]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_45 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias45), .weight(weight45), .sum(output_node[45]), .finish(finish[45]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_46 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias46), .weight(weight46), .sum(output_node[46]), .finish(finish[46]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_47 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias47), .weight(weight47), .sum(output_node[47]), .finish(finish[47]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_48 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias48), .weight(weight48), .sum(output_node[48]), .finish(finish[48]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_49 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias49), .weight(weight49), .sum(output_node[49]), .finish(finish[49]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_50 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias50), .weight(weight50), .sum(output_node[50]), .finish(finish[50]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_51 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias51), .weight(weight51), .sum(output_node[51]), .finish(finish[51]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_52 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias52), .weight(weight52), .sum(output_node[52]), .finish(finish[52]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_53 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias53), .weight(weight53), .sum(output_node[53]), .finish(finish[53]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_54 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias54), .weight(weight54), .sum(output_node[54]), .finish(finish[54]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_55 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias55), .weight(weight55), .sum(output_node[55]), .finish(finish[55]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_56 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias56), .weight(weight56), .sum(output_node[56]), .finish(finish[56]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_57 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias57), .weight(weight57), .sum(output_node[57]), .finish(finish[57]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_58 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias58), .weight(weight58), .sum(output_node[58]), .finish(finish[58]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_59 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias59), .weight(weight59), .sum(output_node[59]), .finish(finish[59]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_60 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias60), .weight(weight60), .sum(output_node[60]), .finish(finish[60]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_61 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias61), .weight(weight61), .sum(output_node[61]), .finish(finish[61]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_62 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias62), .weight(weight62), .sum(output_node[62]), .finish(finish[62]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_63 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias63), .weight(weight63), .sum(output_node[63]), .finish(finish[63]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_64 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias64), .weight(weight64), .sum(output_node[64]), .finish(finish[64]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_65 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias65), .weight(weight65), .sum(output_node[65]), .finish(finish[65]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_66 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias66), .weight(weight66), .sum(output_node[66]), .finish(finish[66]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_67 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias67), .weight(weight67), .sum(output_node[67]), .finish(finish[67]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_68 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias68), .weight(weight68), .sum(output_node[68]), .finish(finish[68]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_69 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias69), .weight(weight69), .sum(output_node[69]), .finish(finish[69]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_70 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias70), .weight(weight70), .sum(output_node[70]), .finish(finish[70]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_71 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias71), .weight(weight71), .sum(output_node[71]), .finish(finish[71]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_72 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias72), .weight(weight72), .sum(output_node[72]), .finish(finish[72]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_73 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias73), .weight(weight73), .sum(output_node[73]), .finish(finish[73]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_74 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias74), .weight(weight74), .sum(output_node[74]), .finish(finish[74]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_75 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias75), .weight(weight75), .sum(output_node[75]), .finish(finish[75]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_76 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias76), .weight(weight76), .sum(output_node[76]), .finish(finish[76]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_77 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias77), .weight(weight77), .sum(output_node[77]), .finish(finish[77]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_78 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias78), .weight(weight78), .sum(output_node[78]), .finish(finish[78]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_79 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias79), .weight(weight79), .sum(output_node[79]), .finish(finish[79]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_80 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias80), .weight(weight80), .sum(output_node[80]), .finish(finish[80]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_81 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias81), .weight(weight81), .sum(output_node[81]), .finish(finish[81]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_82 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias82), .weight(weight82), .sum(output_node[82]), .finish(finish[82]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_83 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias83), .weight(weight83), .sum(output_node[83]), .finish(finish[83]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_84 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias84), .weight(weight84), .sum(output_node[84]), .finish(finish[84]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_85 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias85), .weight(weight85), .sum(output_node[85]), .finish(finish[85]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_86 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias86), .weight(weight86), .sum(output_node[86]), .finish(finish[86]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_87 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias87), .weight(weight87), .sum(output_node[87]), .finish(finish[87]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_88 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias88), .weight(weight88), .sum(output_node[88]), .finish(finish[88]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_89 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias89), .weight(weight89), .sum(output_node[89]), .finish(finish[89]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_90 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias90), .weight(weight90), .sum(output_node[90]), .finish(finish[90]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_91 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias91), .weight(weight91), .sum(output_node[91]), .finish(finish[91]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_92 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias92), .weight(weight92), .sum(output_node[92]), .finish(finish[92]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_93 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias93), .weight(weight93), .sum(output_node[93]), .finish(finish[93]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_94 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias94), .weight(weight94), .sum(output_node[94]), .finish(finish[94]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_95 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias95), .weight(weight95), .sum(output_node[95]), .finish(finish[95]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_96 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias96), .weight(weight96), .sum(output_node[96]), .finish(finish[96]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_97 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias97), .weight(weight97), .sum(output_node[97]), .finish(finish[97]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_98 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias98), .weight(weight98), .sum(output_node[98]), .finish(finish[98]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_99 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias99), .weight(weight99), .sum(output_node[99]), .finish(finish[99]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_100 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias100), .weight(weight100), .sum(output_node[100]), .finish(finish[100]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_101 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias101), .weight(weight101), .sum(output_node[101]), .finish(finish[101]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_102 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias102), .weight(weight102), .sum(output_node[102]), .finish(finish[102]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_103 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias103), .weight(weight103), .sum(output_node[103]), .finish(finish[103]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_104 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias104), .weight(weight104), .sum(output_node[104]), .finish(finish[104]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_105 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias105), .weight(weight105), .sum(output_node[105]), .finish(finish[105]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_106 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias106), .weight(weight106), .sum(output_node[106]), .finish(finish[106]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_107 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias107), .weight(weight107), .sum(output_node[107]), .finish(finish[107]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_108 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias108), .weight(weight108), .sum(output_node[108]), .finish(finish[108]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_109 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias109), .weight(weight109), .sum(output_node[109]), .finish(finish[109]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_110 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias110), .weight(weight110), .sum(output_node[110]), .finish(finish[110]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_111 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias111), .weight(weight111), .sum(output_node[111]), .finish(finish[111]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_112 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias112), .weight(weight112), .sum(output_node[112]), .finish(finish[112]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_113 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias113), .weight(weight113), .sum(output_node[113]), .finish(finish[113]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_114 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias114), .weight(weight114), .sum(output_node[114]), .finish(finish[114]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_115 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias115), .weight(weight115), .sum(output_node[115]), .finish(finish[115]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_116 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias116), .weight(weight116), .sum(output_node[116]), .finish(finish[116]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_117 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias117), .weight(weight117), .sum(output_node[117]), .finish(finish[117]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_118 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias118), .weight(weight118), .sum(output_node[118]), .finish(finish[118]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_119 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias119), .weight(weight119), .sum(output_node[119]), .finish(finish[119]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_120 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias120), .weight(weight120), .sum(output_node[120]), .finish(finish[120]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_121 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias121), .weight(weight121), .sum(output_node[121]), .finish(finish[121]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_122 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias122), .weight(weight122), .sum(output_node[122]), .finish(finish[122]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_123 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias123), .weight(weight123), .sum(output_node[123]), .finish(finish[123]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_124 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias124), .weight(weight124), .sum(output_node[124]), .finish(finish[124]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_125 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias125), .weight(weight125), .sum(output_node[125]), .finish(finish[125]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_126 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias126), .weight(weight126), .sum(output_node[126]), .finish(finish[126]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_127 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias127), .weight(weight127), .sum(output_node[127]), .finish(finish[127]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_128 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias128), .weight(weight128), .sum(output_node[128]), .finish(finish[128]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_129 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias129), .weight(weight129), .sum(output_node[129]), .finish(finish[129]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_130 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias130), .weight(weight130), .sum(output_node[130]), .finish(finish[130]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_131 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias131), .weight(weight131), .sum(output_node[131]), .finish(finish[131]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_132 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias132), .weight(weight132), .sum(output_node[132]), .finish(finish[132]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_133 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias133), .weight(weight133), .sum(output_node[133]), .finish(finish[133]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_134 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias134), .weight(weight134), .sum(output_node[134]), .finish(finish[134]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_135 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias135), .weight(weight135), .sum(output_node[135]), .finish(finish[135]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_136 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias136), .weight(weight136), .sum(output_node[136]), .finish(finish[136]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_137 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias137), .weight(weight137), .sum(output_node[137]), .finish(finish[137]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_138 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias138), .weight(weight138), .sum(output_node[138]), .finish(finish[138]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_139 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias139), .weight(weight139), .sum(output_node[139]), .finish(finish[139]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_140 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias140), .weight(weight140), .sum(output_node[140]), .finish(finish[140]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_141 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias141), .weight(weight141), .sum(output_node[141]), .finish(finish[141]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_142 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias142), .weight(weight142), .sum(output_node[142]), .finish(finish[142]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_143 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias143), .weight(weight143), .sum(output_node[143]), .finish(finish[143]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_144 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias144), .weight(weight144), .sum(output_node[144]), .finish(finish[144]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_145 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias145), .weight(weight145), .sum(output_node[145]), .finish(finish[145]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_146 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias146), .weight(weight146), .sum(output_node[146]), .finish(finish[146]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_147 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias147), .weight(weight147), .sum(output_node[147]), .finish(finish[147]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_148 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias148), .weight(weight148), .sum(output_node[148]), .finish(finish[148]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_149 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias149), .weight(weight149), .sum(output_node[149]), .finish(finish[149]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_150 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias150), .weight(weight150), .sum(output_node[150]), .finish(finish[150]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_151 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias151), .weight(weight151), .sum(output_node[151]), .finish(finish[151]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_152 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias152), .weight(weight152), .sum(output_node[152]), .finish(finish[152]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_153 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias153), .weight(weight153), .sum(output_node[153]), .finish(finish[153]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_154 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias154), .weight(weight154), .sum(output_node[154]), .finish(finish[154]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_155 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias155), .weight(weight155), .sum(output_node[155]), .finish(finish[155]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_156 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias156), .weight(weight156), .sum(output_node[156]), .finish(finish[156]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_157 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias157), .weight(weight157), .sum(output_node[157]), .finish(finish[157]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_158 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias158), .weight(weight158), .sum(output_node[158]), .finish(finish[158]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_159 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias159), .weight(weight159), .sum(output_node[159]), .finish(finish[159]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_160 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias160), .weight(weight160), .sum(output_node[160]), .finish(finish[160]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_161 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias161), .weight(weight161), .sum(output_node[161]), .finish(finish[161]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_162 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias162), .weight(weight162), .sum(output_node[162]), .finish(finish[162]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_163 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias163), .weight(weight163), .sum(output_node[163]), .finish(finish[163]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_164 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias164), .weight(weight164), .sum(output_node[164]), .finish(finish[164]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_165 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias165), .weight(weight165), .sum(output_node[165]), .finish(finish[165]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_166 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias166), .weight(weight166), .sum(output_node[166]), .finish(finish[166]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_167 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias167), .weight(weight167), .sum(output_node[167]), .finish(finish[167]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_168 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias168), .weight(weight168), .sum(output_node[168]), .finish(finish[168]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_169 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias169), .weight(weight169), .sum(output_node[169]), .finish(finish[169]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_170 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias170), .weight(weight170), .sum(output_node[170]), .finish(finish[170]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_171 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias171), .weight(weight171), .sum(output_node[171]), .finish(finish[171]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_172 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias172), .weight(weight172), .sum(output_node[172]), .finish(finish[172]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_173 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias173), .weight(weight173), .sum(output_node[173]), .finish(finish[173]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_174 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias174), .weight(weight174), .sum(output_node[174]), .finish(finish[174]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_175 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias175), .weight(weight175), .sum(output_node[175]), .finish(finish[175]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_176 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias176), .weight(weight176), .sum(output_node[176]), .finish(finish[176]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_177 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias177), .weight(weight177), .sum(output_node[177]), .finish(finish[177]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_178 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias178), .weight(weight178), .sum(output_node[178]), .finish(finish[178]));
    nnsingle #( .input_number(input_number), .width(width)) U_layer1_179 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias179), .weight(weight179), .sum(output_node[179]), .finish(finish[179]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_180 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias180), .weight(weight180), .sum(output_node[180]), .finish(finish[180]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_181 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias181), .weight(weight181), .sum(output_node[181]), .finish(finish[181]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_182 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias182), .weight(weight182), .sum(output_node[182]), .finish(finish[182]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_183 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias183), .weight(weight183), .sum(output_node[183]), .finish(finish[183]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_184 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias184), .weight(weight184), .sum(output_node[184]), .finish(finish[184]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_185 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias185), .weight(weight185), .sum(output_node[185]), .finish(finish[185]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_186 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias186), .weight(weight186), .sum(output_node[186]), .finish(finish[186]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_187 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias187), .weight(weight187), .sum(output_node[187]), .finish(finish[187]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_188 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias188), .weight(weight188), .sum(output_node[188]), .finish(finish[188]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_189 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias189), .weight(weight189), .sum(output_node[189]), .finish(finish[189]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_190 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias190), .weight(weight190), .sum(output_node[190]), .finish(finish[190]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_191 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias191), .weight(weight191), .sum(output_node[191]), .finish(finish[191]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_192 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias192), .weight(weight192), .sum(output_node[192]), .finish(finish[192]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_193 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias193), .weight(weight193), .sum(output_node[193]), .finish(finish[193]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_194 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias194), .weight(weight194), .sum(output_node[194]), .finish(finish[194]));
    //nnsingle #( .input_number(input_number), .width(width)) U_layer1_195 (.clk(clk), .rst_n(rst_n), .enable(enable), .input_node(input_node), .bias(bias195), .weight(weight195), .sum(output_node[195]), .finish(finish[195]));


always @* begin
    if (finish[178] == 1 ) begin
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
