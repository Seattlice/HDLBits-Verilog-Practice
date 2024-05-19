module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire [15:0]sum1,sum2,sum3;
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
        .cin	(1'b0),
        
        .sum	(sum2),
        //.cout	(cout)
    );
    
    add16 add16_inst3(
        .a		(a[31:16]),
        .b		(b[31:16]),
        .cin	(1'b1),
        
        .sum	(sum3),
        //.cout	(cout)
    );    
    
    always@(*)
        begin
            case(cout)
                1'b0:sum = {sum2,sum1};
                1'b1:sum = {sum3,sum1};
            endcase
        end    
endmodule
