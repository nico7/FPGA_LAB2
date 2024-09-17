`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 12:07:26 AM
// Design Name: 
// Module Name: vga_top
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

module vga_low_level(
input clk,
input rst,
input [3:0] count,
input [11:0] color,
output [3:0] vgaRed,
output [3:0] vgaGreen,
output [3:0] vgaBlue,
output Hsync,
output Vsync
);

parameter HSYNC_PW      = 96;
parameter HSYNC_FP      = 16;
parameter HSYNC_BP      = 48;
parameter HSYNC_PERIOD  = 800;

parameter VSYNC_PW      = 2;
parameter VSYNC_FP      = 10;
parameter VSYNC_BP      = 29;
parameter VSYNC_PERIOD  = 521;   

reg pres_clk, prev_clk, slow_clk;
reg [2:0] fast_clk_counter;
reg [9:0] hor_counter;
reg [9:0] ver_counter;
reg [11:0] current_color;

assign {vgaRed, vgaGreen, vgaBlue} = current_color;

always @(posedge clk) begin
    if(rst == 1) begin
        fast_clk_counter <= 0;
    end
    else begin
        fast_clk_counter <= fast_clk_counter + 1;
    end
end

always @(posedge clk) begin
    if(rst == 1) begin
        prev_clk <= 1'b0;
        pres_clk <= 1'b1;
    end
    else begin
        if(fast_clk_counter[2] == 1) begin
            prev_clk <= pres_clk;
            pres_clk <= fast_clk_counter[2];
        end
    end
end

always @(posedge clk) begin
    if(rst == 1) begin
       slow_clk <= 1'b0;
    end
    else begin
        slow_clk <= (~prev_clk) & (pres_clk);
    end
end


always @(posedge clk) begin
    if(rst == 1) begin
        current_color <= 12'h000;
    end
    else begin
        current_color <= color;
    end
end

always @(posedge clk) begin
    
end

endmodule