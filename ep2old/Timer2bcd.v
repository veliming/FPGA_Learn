module Timer2bcd(Timer,Data_out);
input [13:0] Timer;               
output reg [15:0] Data_out=0;     

always @(Timer)
begin
  Data_out[15:12]<=(Timer/600)%10; // 分低位 
  Data_out[11:8]<=(Timer/10%60)/10; // 秒高位
  Data_out[7:4]<=(Timer/10%60)%10; // 秒低位
  Data_out[3:0]<=Timer%10;// 0.1s
end

endmodule
















 


