module univshiftreg(
input [3:0] data,
input [1:0] sel,
input clr, bit, clk,
output reg [3:0] out
);
reg [3:0] storage;
always @(posedge clk) begin
if (clr) begin
out <= 4'b0000;
end else begin
case (sel)
2'b00: begin
storage <= out;
end
2'b01: begin
storage <= {bit, out[3:1]};
end
2'b10: begin
storage <= {out[2:0], bit};
end
2'b11: begin
storage <= data;
end
endcase
assign out = storage;
end
end
endmodule
