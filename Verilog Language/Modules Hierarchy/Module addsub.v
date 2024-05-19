module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire [31:0] b1;

    always@(*)
        begin
        	case(sub)
            	1'b0:b1 = b;
                1'b1:b1 = ~b + 1'b1;
            endcase
         end
    
    wire [15:0] sum1,sum2;
    wire cout;
    add16 add16_inst1(
        .a		(a[15:0]),
        .b		(b1[15:0]),
        .cin	(1'b0),
        
        .sum	(sum1),
        .cout	(cout)
    );
    
     add16 add16_inst2(
         .a		(a[31:16]),
         .b		(b1[31:16]),
        .cin	(cout),
        
        .sum	(sum2),

    );
       
    assign sum = {sum2,sum1}; 
    
endmodule
