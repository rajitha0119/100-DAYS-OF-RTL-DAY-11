`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2023 19:35:15
// Design Name: 
// Module Name: carry_look_ahead_adder
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


module carry_look_ahead_adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output [3:0] cout
    );
 wire [3:0]ci;
 
 assign ci[0]=cin;
 assign ci[1]=(a[0]&b[0])|((a[0]^b[0])&ci[0]);
 assign ci[2]=(a[1]&b[1])|((a[1]^b[1])&ci[1]);
 assign ci[3]=(a[2]&b[2])|((a[2]^b[2])&ci[2]);
 assign cout=(a[3]&b[3])|((a[3]^b[3])&ci[3]);
 
 assign sum=a^b^ci;  
endmodule
