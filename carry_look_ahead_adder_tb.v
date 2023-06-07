`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2023 20:03:54
// Design Name: 
// Module Name: carry_look_ahead_adder_tb
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


module carry_look_ahead_adder_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
//wire [4:0]add;
carry_look_ahead_adder ra(a,b,cin,sum,cout);
initial begin
$monitor(a,b,sum,cout,cin);
a=1;b=0;cin=0;#3;
a=2;b=4;cin=1;#3;
a=4'hb;b=4'h6;cin=0;#3;
a=5;b=3;cin=1;

end
endmodule
