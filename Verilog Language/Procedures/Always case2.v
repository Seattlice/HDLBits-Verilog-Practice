
// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );

    always@(*)
        case(in)
            4'b0000:   pos = 2'b0;
            4'b0001:   pos = 2'b0;
            4'b0010:   pos = 2'b1;
            4'b0011:   pos = 2'b0;
            4'b0100:   pos = 2'd2;
            4'b0101:   pos = 2'b0;
            4'b0110:   pos = 2'b1;
            4'b0111:   pos = 2'b0;
            4'b1000:   pos = 2'd3;
            4'b1001:   pos = 2'b0;
            4'b1010:   pos = 2'b1;
            4'b1011:   pos = 2'b0;
            4'b1100:   pos = 2'd2;
            4'b1101:   pos = 2'b0;
            4'b1110:   pos = 2'b1;
            4'b1111:   pos = 2'b0;
            default:pos = 2'd0;
        endcase   
        
    
endmodule


//*************************另一种方法***********************
// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );

    always@(*)
        if(in[0] == 1'd1)
            pos = 3'd0;
   		else if(in[1] == 1'd1)
            pos = 3'd1;        
        else if(in[2] == 1'd1)
            pos = 3'd2;           
        else if(in[3] == 1'd1)
            pos = 3'd3;
        else
             pos = 3'd0;
endmodule
