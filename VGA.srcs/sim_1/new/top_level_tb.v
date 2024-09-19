`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2024 12:50:51 AM
// Design Name: 
// Module Name: top_level_tb
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


`timescale 1ns / 1ps

module topLevel_tb;

    // Inputs
    reg clk;
    reg btnR;
    reg btnC;

    // Outputs
    wire [3:0] vgaRed;
    wire [3:0] vgaGreen;
    wire [3:0] vgaBlue;
    wire Hsync;
    wire Vsync;
    wire ca, cb, cc, cd, ce, cf, cg;
    wire an_0, an_1, an_2;
    wire aones;

    // Instantiate the top-level module
    topLevel uut (
        .clk(clk),
        .vgaRed(vgaRed),
        .vgaGreen(vgaGreen),
        .vgaBlue(vgaBlue),
        .Hsync(Hsync),
        .Vsync(Vsync),
        .ca(ca),
        .cb(cb),
        .cc(cc),
        .cd(cd),
        .ce(ce),
        .cf(cf),
        .cg(cg),
        .an_0(an_0),
        .an_1(an_1),
        .an_2(an_2),
        .aones(aones),
        .btnR(btnR),
        .btnC(btnC)
    );

    // Clock generation
    always #5 clk = ~clk; // 100MHz clock (10ns period)

    initial begin
        // Initialize inputs
        clk = 0;
        btnR = 0;
        btnC = 0;

        // Apply reset
        #100;
        btnR = 1;
        #20;
        btnR = 0;

        // Simulate button presses to increase the counter
        repeat(8) begin
            #10000;
            btnC = 1;
            #50000000;
            btnC = 0;
        end

        // End simulation after some time
        #1000;
        $finish;
    end

endmodule

