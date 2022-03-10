module my1hz(clk,clk_out,q);
input clk;
output reg clk_out;
output reg[3:0] q;
reg[26:0] cnt;
always @(posedge clk)
begin
if(cnt==27'd24_999_999)
	begin
		cnt<=27'd0;
		clk_out<=~clk_out;
	end
else
	cnt<=cnt+1;
end

always @(posedge clk_out)
begin
if(q==4'd9)
	q<=0;
else
	q<=q+1;
end
endmodule
