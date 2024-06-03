`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2024 02:25:35 PM
// Design Name: 
// Module Name: draw_module
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


module draw_module(
    input clk,
    input [12:0] pixel_index,
    input [(6 * 20) - 1:0] spectrogram,
    output reg [15:0] oled_data
    );
    
    wire selected = 2;
    //find pixel coordinates
    wire [6:0] x;
    wire [5:0] y;
    assign x = (pixel_index % 96); //from 0 to 95
    assign y = (pixel_index / 96); //from 0 to 63
    
    //create colours
    wire [15:0] white = 16'b1111111111111111;
    wire [15:0] black = 16'd0;
    wire [15:0] red = 16'b1111100000000000;
    wire [15:0] green = 16'b0000011111100000;
    wire [15:0] lightgreen = 16'b0011111111100111;
    wire [15:0] lightlightgreen = 16'b0111111111101111;
    wire [15:0] orange = 16'b1111111111100000;
    wire [15:0] purple = 16'b1111100000011111;
    wire [15:0] blue = 16'b0000000000011111;
    wire [15:0] teal = 16'b0000011111111111;  
    
    
    always @ (posedge clk) begin 
//        if (spectrogram[0*6 +:6] > spectrogram[1*6 +:6])
//            led[15] = 1;
//        else if (spectrogram[0*6 +:6] < spectrogram[1*6 +:6])
//            led[14] = 1;
//        else
//            led[13] = 1;
        
        //FOR OLED FOR SPECTROGRAM  
        if (x >= 8 && x <= 10 && y >= spectrogram[0*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 12 && x <= 14 && y >= spectrogram[1*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 16 && x <= 18 && y >= spectrogram[2*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 20 && x <= 22 && y >= spectrogram[3*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 24 && x <= 26 && y >= spectrogram[4*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 28 && x <= 30 && y >= spectrogram[5*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 32 && x <= 34 && y >= spectrogram[6*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 36 && x <= 38 && y >= spectrogram[7*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 40 && x <= 42 && y >= spectrogram[8*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 44 && x <= 46 && y >= spectrogram[9*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 48 && x <= 50 && y >= spectrogram[10*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 52 && x <= 54 && y >= spectrogram[11*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 56 && x <= 58 && y >= spectrogram[12*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 60 && x <= 62 && y >= spectrogram[13*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 64 && x <= 66 && y >= spectrogram[14*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 68 && x <= 70 && y >= spectrogram[15*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 72 && x <= 74 && y >= spectrogram[16*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 76 && x <= 78 && y >= spectrogram[17*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 80 && x <= 82 && y >= spectrogram[18*6 +:6]) begin
            oled_data <= white;
        end
        else if (x >= 84 && x <= 86 && y >= spectrogram[19*6 +:6]) begin
            oled_data <= white;
        end
        else
            oled_data <= black;
    end
endmodule
