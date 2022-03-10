module CLK_Generator(Clk_50M,clk_5k,clk_1k,clk_1hz);

input Clk_50M;
output reg clk_1k;
output reg clk_5k;
output reg clk_1hz;

reg [26:0] cnt_1hz;
reg [26:0] cnt_1k;
reg [26:0] cnt_5k; 


always@(posedge Clk_50M)
begin
	if(cnt_1k==25000-1) 
	begin 
	  cnt_1k<=0;
	  clk_1k<=~clk_1k; 
	end
	else 
	  cnt_1k<=cnt_1k + 1;
end

always@(posedge Clk_50M)
begin
	if(cnt_1hz==25000000-1) 
	begin 
	  cnt_1hz<=0;
	  clk_1hz<=~clk_1hz; 
	end
	else 
	  cnt_1hz <= cnt_1hz + 1;
end

always @(posedge Clk_50M) 
begin
	if(cnt_5k==5000-1) 
	begin  	
	    cnt_5k <= 0; 
	    clk_5k <= ~clk_5k;  
	end
	else 
	    cnt_5k <= cnt_5k+1;
end


endmodule 

