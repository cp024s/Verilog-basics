module fbm(a,b,c);
input [3:0]a,b;
output [7:0]c;
wire [3:0]w1;
wire [4:0]w2;
wire [5:0]w3;
wire [6:0]w4;
wire [7:0]x,y;
assign w1={4{a[0]}}&b[3:0];
assign w2={4{a[1]}}&b[3:0];
assign w3={4{a[2]}}&b[3:0];
assign w4={4{a[3]}}&b[3:0];
assign x=w1+(w2<<1);
assign y=x+(w3<<2);
assign c=y+(w4<<3);
endmodule
