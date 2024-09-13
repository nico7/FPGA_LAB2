`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2024 01:20:58 AM
// Design Name: 
// Module Name: topLevel
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


module topLevel(
input clk,
output [3:0] vgaRed,
output [3:0] vgaBlue,
output [3:0] vgaGreen,
output Hsync,
output Vsync,
output ca,
output cb,
output cc,
output cd,
output ce,
output cf,
output cg,
output an_0,
output an_1,
output an_2,
output aones,
input btnR,
input btnC
);

    assign {an_0, an_1, an_2} = 3'b111;
    
    wire counter_pressed;
    wire rst;
    reg [3:0] counter;
    
    
    debounce counter_debounce(
    .clk(clk),
    .button(btnC),
    .pushed(rst)
    );
    
   debounce rst_debounce(
    .clk(clk),
    .button(btnR),
    .pushed(counter_pressed)
    );
    
    
    sev_seg(
    .clk(clk),
    .rst(rst),
    .count(counter),
    .anode(aones),
    .ca(ca),
    .cb(cb),
    .cc(cc),
    .cd(cd),
    .ce(ce),
    .cf(cf),
    .cg(cg)
    );
    
    always @(posedge clk) begin
        if(rst == 1'b1) begin
            counter <= 4'h0;
        end
        else begin
            if (counter_pressed == 1'b1) begin
                if(counter < 4'h7) begin
                    counter <= counter + 1;
                end
                else begin
                    counter <= 4'h0;
                end
            end
        end
    end
    
endmodule
