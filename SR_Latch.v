`timescale 1ns / 1ps


module SR_Latch(
    input D, E,
    output reg Q, 
    output NotQ
    );
    
    always @(E, D) begin
        if(E & D)
            Q <= 1;
        else if(E & ~D)
            Q <= 0;
    end
    
    assign NotQ = ~Q;

endmodule
