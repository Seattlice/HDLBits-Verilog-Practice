//熟记以下此种方式实例化模板

module top_module ( 
    input a, 
    input b, 
    input c,
    input d,
    output out1,
    output out2
);
mod_a mod_a_inst
    ( out1,
      out2, 
     
     a,
     b,
     c,
     d
    );
    
    
endmodule
