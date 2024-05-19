//注意begin与end 不然会出错的
module top_module( 
    input [254:0] in,
    output [7:0] out );

    integer i;

    always@(*)            begin
        out = 1'b0;
    	for(i = 0;i <= 254;i = i+1)

            if(in[i] == 1'b1)
                out = out + 1'b1;
   			else
                out = out;
            end
endmodule
