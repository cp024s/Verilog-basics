module t_ff(t,q,clk);
input t,clk;
output reg q;
wire nextval;
assign nextval=t^(1'b1);
always@(negedge clk)
begin
q<=nextval;
end
endmodule

// 16 bit counter
module sixteenbcounter(clk,out);
input clk;
output reg[3:0]out;
t_ff(1'b1,out[0],clk);
t_ff(1'b1,out[1],out[0]);
t_ff(1'b1,out[2],out[1]);
t_ff(1'b1,out[3],out[2]);
endmodule
