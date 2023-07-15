module memory(data,address,en,clk,rst,out);
input [3:0]data,address;
input en,clk,rst;
output reg[3:0]out;
reg [3:0] storage[15:0];
always@(posedge clk)
begin
if(rst)
begin
out<=4'b0;
end
else if(en)
begin
storage[address]<=data;
out<=data;
end
else
begin
out<=storage[address];
end
end
endmodule
