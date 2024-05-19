module top_module( 
    input [99:0] in,
    output [99:0] out
);
    integer i;
    always@(*)
        for(i = 0;i<=99;i++)
            out[i] = in[99 - i];
    
endmodule
