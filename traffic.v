module traffic(input clk, rst,output reg ns_red, ns_yellow, ns_green,output reg ew_red, ew_yellow, ew_green);
reg[4:0]count;
parameter NS_GREEN  = 2'b00,
          NS_YELLOW = 2'b01,
          EW_GREEN  = 2'b10,
          EW_YELLOW = 2'b11;

reg [1:0] ps, ns;
always @(posedge clk)
begin
    if(rst)begin
	    count<=0;
	    ps <= NS_GREEN;
    end
    else begin
	    ps <= ns;
	    if ((ps == NS_GREEN  && count == 29) || (ps == NS_YELLOW && count == 4)  || (ps == EW_GREEN  && count == 29) ||(ps == EW_YELLOW && count == 4)) count <= 0;
	    else
   
		    count <= count + 1'b1;
    end
end

//state logic
always@(*)begin
	case(ps)
		2'b00:begin
			if(count==29)
				ns=NS_YELLOW;
			else
				ns=NS_GREEN;
		end
		2'b01:begin
			if(count==4)
				ns=EW_GREEN;
			else
				ns=NS_YELLOW;
			end
		2'b10:begin
			if(count==29)
				ns=EW_YELLOW;
			else
				ns=EW_GREEN;
		end
		2'b11:begin
			if(count==4)
				ns=NS_GREEN;
			else
				ns=EW_YELLOW;
		end
	endcase
end
//o/p
always@(*)begin
	case(ps)
		2'b00:begin
			ns_red=0;
			ns_yellow=0;
			ns_green=1;
			ew_red=1;
		       	ew_yellow=0;
		       	ew_green=0;

		end
		2'b01:begin
			ns_red=0;
			ns_yellow=1;
			ns_green=0;
			ew_red=1;
		       	ew_yellow=0;
		       	ew_green=0;

		end
		2'b10:begin
			ns_red=1;
			ns_yellow=0;
			ns_green=0;
			ew_red=0;
		       	ew_yellow=0;
		       	ew_green=1;

		end
		2'b11:begin
			ns_red=1;
			ns_yellow=0;
			ns_green=0;
			ew_red=0;
		       	ew_yellow=1;
		       	ew_green=0;
		end
	endcase
end
endmodule
