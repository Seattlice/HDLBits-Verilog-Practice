//8685
//怪题，做错了再看看

module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire [15:0] sum1,sum2;
    wire cout;
    add16 add16_inst1(
        .a		(a[15:0]),
        .b		(b[15:0]),
        .cin	(1'b0),
        
        .sum	(sum1),
        .cout	(cout)
    );
    
     add16 add16_inst2(
         .a		(a[31:16]),
         .b		(b[31:16]),
        .cin	(cout),
        
        .sum	(sum2),

    );
    
    
    assign sum = {sum2,sum1};
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    assign {cout,sum} = a+b+cin;
endmodule
