module fa(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
assign s=(a^b^cin);
assign cout=(a&b)|(b&cin)|(cin&a);
endmodule

module eba(a,b,cin,s,cout);
input [7:0]a,b;
output [7:0]s;
input cin;
output cout;
wire [7:1]c;
fa u1(a[0],b[0],cin,s[0],c[1]);
fa u2(a[1],b[1],c[1],s[1],c[2]);
fa u3(a[2],b[2],c[2],s[2],c[3]);
fa u4(a[3],b[3],c[3],s[3],c[4]);
fa u5(a[4],b[4],c[4],s[4],c[5]);
fa u6(a[5],b[5],c[5],s[5],c[6]);
fa u7(a[6],b[6],c[6],s[6],c[7]);
fa u8(a[7],b[7],c[7],s[7],cout);
endmodule
