module traffic_tb;
reg clk,rst;
wire ns_red,ns_yellow,ns_green,ew_red,ew_yellow,ew_green;
traffic dut(clk,rst,ns_red,ns_yellow,ns_green,ew_red,ew_yellow,ew_green);
always #5 clk=~clk;
initial 
	{clk,rst}=0;
initial begin
    rst = 1;
    #10;
    rst = 0;
    #10000;
    $finish;
end
initial
    $monitor("Time=%0t NS(RYG)=%b %b %b  EW(RYG)=%b %b %b count=%d",$time,ns_red, ns_yellow, ns_green ,ew_red, ew_yellow,ew_green,dut.count);
endmodule
