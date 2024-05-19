//逻辑运算和算数运算并不一致，注意查明为什么不一致
module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);

    assign out_and = & in;
    assign out_or = | in;
    assign out_xor = ^ in;
endmodule
