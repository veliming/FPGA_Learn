module multi_disp(key_in,clk_50M,smg_en,Q,h,clk_1k);
input clk_50M;
input[15:0] key_in;
output reg[3:0] smg_en=0;
output reg[3:0] Q=0;
output reg h=0;
output reg clk_1k=0;
reg [31:0] counter=0;
reg [1:0] cnt=0;
reg[3:0]D3,D2,D1;

parameter Nmax=32'd25_000; //1k

always@(key_in)
begin
D3=key_in/100;
D2=(key_in%100)/10;
D1=key_in%10;
end

always@(posedge clk_50M)
begin
	if(counter==Nmax-1) 
	begin
	   counter<=0;
		clk_1k<=~clk_1k;
	end
	else 
	   counter<= counter + 1;
end

always@(posedge clk_1k)
begin
	if(cnt==2) 
	   cnt<=0;
	else 
	   cnt <= cnt + 1;
end

always@(posedge clk_1k)
begin 
		case(cnt)
		0:begin smg_en<=4'b0001; Q<=key_in[15:12];h<=0; end
		1:begin smg_en<=4'b0010; Q<=key_in[11:8]; h<=0; end
	   2:begin smg_en<=4'b0100; Q<=key_in[7:4];  h<=1; end
		endcase
end 
endmodule 
