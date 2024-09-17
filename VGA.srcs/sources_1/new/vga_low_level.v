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

//parameter HSYNC_PW      = 96;
//parameter HSYNC_FP      = 16;
//parameter HSYNC_BP      = 48;
parameter HSYNC_DISPLAY = 640;
parameter HTHRESH_1     = 656;
parameter HTHRESH_2     = 752;
parameter HSYNC_PERIOD  = 800;

//parameter VSYNC_PW      = 2;
//parameter VSYNC_FP      = 10;
//parameter VSYNC_BP      = 29;
parameter VSYNC_DISPLAY = 480;
parameter VTHRESH_1     = 490;
parameter VTHRESH_2     = 492;
parameter VSYNC_PERIOD  = 521;   

reg pres_clk, prev_clk, slow_clk;
reg [2:0] fast_clk_counter;
reg [9:0] hor_count;
reg [9:0] ver_count;
reg [11:0] current_color;

reg hor_local, ver_local;

assign {vgaRed, vgaGreen, vgaBlue} = current_color;
assign Hsync = hor_local;
assign Vsync = ver_local;

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
        prev_clk <= 1'b1;
        pres_clk <= 1'b0;
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
    if(rst == 1) begin
        hor_count <= 0;
        ver_count <= 0;
    end
    else begin
        if(slow_clk == 1) begin
            if(hor_count < HSYNC_PERIOD - 1) begin
                hor_count <= hor_count + 1;
            end
            else begin
                hor_count <= 0;
                
                if(ver_count < VSYNC_PERIOD - 1) begin
                    ver_count <= ver_count + 1;
                end
                else begin
                    ver_count <= 0;
                end
            end
        end
    end
end

always @(posedge clk) begin
    if(rst == 1) begin
        hor_local <= 1;
        ver_local <= 1;
    end
    else if(slow_clk == 1) begin
        if(hor_count > HSYNC_DISPLAY - 1) begin
            if(hor_count < HTHRESH_1) begin
                hor_local <= 1;
            end
            else if (hor_count < HTHRESH_2) begin
                hor_local <= 0;
            end
            else begin
                hor_local <= 1;
            end
        end
        else begin
            hor_local <= 1;
        end
        
        if(ver_count > VSYNC_DISPLAY - 1) begin
            if(ver_count < VTHRESH_1) begin
                ver_local <= 1;
            end
            else if (ver_count < VTHRESH_2) begin
                ver_local <= 0;
            end
            else begin
                ver_local <= 1;
            end
        end
        
        else begin
            ver_local <= 1;
        end
    end
end

endmodule