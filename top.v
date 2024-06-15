module top(
  input clk,
  input rst,
  input enable,
  input [4:0]switch,
  output [3:0] vgaRed,
  output [3:0] vgaGreen,
  output [3:0] vgaBlue,
  output hsync,
  output vsync,
  output finish
);


 
wire [11:0] data;
wire clk_25MHz;
wire clk_22;
wire [16:0] pixel_addr;
wire [11:0] pixel;
wire valid;
wire [9:0] h_cnt; //640
wire [9:0] v_cnt;  //480
wire clk_18;
wire button_debounce; 
wire signed [9:0] image_data [0:195]; 
reg signed [9:0] input_data [0:1]; 
always@* begin 
    if(switch[3]==1) input_data = '{1,0}; 
    else if (switch[2]==1) input_data='{2,0}; 
    else if (switch[1]==1) input_data='{4,0}; 
    else if (switch[0]==1) input_data='{8,0};
    else input_data='{-4,-4};  
end
assign {vgaRed, vgaGreen, vgaBlue} = (valid==1'b1) ? pixel:12'h0;

// Frequency Divider
clock_divisor clk_wiz_0_inst(
  .clk(clk),
  .clk1(clk_25MHz),
  .clk22(clk_22),
  .clk18(clk_18)
);

vae U_vae(
    .clk(clk),
    .rst_n(~rst), 
    .enable(enable),
    .input_node(input_data), 
    .output_node(image_data),
    .finish(finish)
    );
// Reduce frame address from 640x480 to 320x240

// Use reduced 320x240 address to output the saved picture from RAM     
Drawing U_draw(
    .clk(clk_25MHz), 
    .h_cnt(h_cnt), 
    .v_cnt(v_cnt),
    .data(pixel),
    .input_data(image_data)
    );

// Render the picture by VGA controller
vga_controller   vga_inst(
  .pclk(clk_25MHz),
  .reset(rst),
  .hsync(hsync),
  .vsync(vsync),
  .valid(valid),
  .h_cnt(h_cnt),
  .v_cnt(v_cnt)
);
      
endmodule
