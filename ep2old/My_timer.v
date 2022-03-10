module My_timer(Key,clk_in,My_count);
input clk_in;
input [1:0] Key;
output reg [13:0] My_count=14'd0;
parameter Max_time=6000-1; // 10min

always @(posedge clk_in)
begin
   case(Key)
       2'b00: begin  
		           if(My_count==Max_time) My_count<=0; 
					  else My_count<=My_count+1; 
				  end
       2'b01: My_count<=0; 
       2'b10: My_count<=My_count; 
       2'b11: begin 
		           if(My_count==0) My_count<=Max_time; 
					  else My_count<=My_count-1; 
				  end       
	endcase
end

endmodule
















 


