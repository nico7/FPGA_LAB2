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


module vga_top(
input clk,
input rst,
input [3:0] count,
output [3:0] vgaRed,
output [3:0] vgaGreen,
output [3:0] vgaBlue,
output Hsync,
output Vsync
);

    parameter ZERO  = 4'h0;
    parameter ONE   = 4'h1;
    parameter TWO   = 4'h2;
    parameter THREE = 4'h3;
    parameter FOUR  = 4'h4;
    parameter FIVE  = 4'h5;
    parameter SIX   = 4'h6;
    parameter SEVEN = 4'h7;
    parameter EIGHT = 4'h8;
    parameter NINE  = 4'h9;
    
    parameter GRAY     = 12'h555;
    parameter BLACK    = 12'h000;
    parameter RED      = 12'hE00;
    parameter WHITE    = 12'hFFF;
    parameter GREEN    = 12'h082;
    parameter BLEU     = 12'h08A;
    parameter GOLD     = 12'hB90;
    parameter PINK     =  12'hC8A;
    
    
    reg [11:0] color;
    
    always @(posedge clk) begin
    //    else begin
            case(count)
                ZERO: 
                begin
                    color <= GRAY;
                end
                ONE:
                begin
                    color <= BLACK;
                end
                TWO:
                begin
                    color <= RED;
                end
                THREE:
                begin
                    color <= WHITE;
                end
                FOUR:
                begin
                    color <= GOLD;
                end
                FIVE:
                begin
                    color <= BLEU;
                end
                SIX:
                begin
                    color <= GREEN;
                end
                SEVEN:
                begin
                    color <= PINK;
                end
                default:
                    color <= BLACK;
            endcase
        //end
    end
    
    vga_low_level vga_driver(
    .clk(clk),
    .rst(rst),
    .color(color),
    .vgaRed(vgaRed),
    .vgaGreen(vgaGreen),
    .vgaBlue(vgaBlue),
    .Hsync(Hsync),
    .Vsync(Vsync)
    );
    
    
endmodule
