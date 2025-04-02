`timescale 1ns / 1ps


module demux1_4(
input [1:0] Sel, 
input data,
output reg E, 
output reg F, 
output reg G, 
output reg H

    );
    always@(*)begin
        case(Sel)
            2'b00: {H, G, F, E} <= {1'b0, 1'b0, 1'b0, data};
            2'b01: {H, G, F, E} <= {1'b0, 1'b0, data, 1'b0};
            2'b10: {H, G, F, E} <= {1'b0, data, 1'b0, 1'b0};
            2'b11: {H, G, F, E} <= {data, 1'b0, 1'b0, 1'b0};
        endcase
      end
endmodule
