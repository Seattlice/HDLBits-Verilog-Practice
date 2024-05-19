module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;
    assign min = (a>b)? ((b>c)?(c>d?d:c):(b>d?d:b)):(a>c)?(c>d?d:c):(a>d?d:a);
endmodule
