`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2024 07:58:46 PM
// Design Name: 
// Module Name: top_vga_tb
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


module top_vga_tb;
    reg clk;
    reg rst;
    reg [3:0] count;
    wire [3:0] vgaRed;
    wire [3:0] vgaGreen;
    wire [3:0] vgaBlue;
    wire Hsync;
    wire Vsync;
    
    // Instantiate the vga_top module
    vga_top uut (
        .clk(clk),
        .rst(rst),
        .count(count),
        .vgaRed(vgaRed),
        .vgaGreen(vgaGreen),
        .vgaBlue(vgaBlue),
        .Hsync(Hsync),
        .Vsync(Vsync)
    );
    
    // Clock generation
    always begin
        #5 clk = ~clk; // 100 MHz clock
    end
    
    // Test sequence
    initial begin
        clk = 0;
      //  rst = 1;
        count = 4'h0;
        
        // Apply reset
        #100 
      //  rst = 0;
        
        // Test various colors
        #1000 
        count = 4'h1; // BLACK
        #1000 
        count = 4'h2; // RED
        #1000 
        count = 4'h3; // WHITE
        #1000 
        count = 4'h4; // GREEN
        #1000 
        count = 4'h5; // BLEU
        #1000 
        count = 4'h6; // PINK
        #1000 
        count = 4'h7; // GOLD
        #1000 
        count = 4'h0; // BLACK
        
        // End simulation
        #100000000 $finish;
    end
endmodule

