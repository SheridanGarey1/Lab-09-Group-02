module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);
    D_Latch dlatch(
        .D(sw[0]),
        .Q(led[0]),
        .NotQ(led[1]),
        .E(btnC)
    );
    memory_storage MemSys(
        .data(sw[15:8]),
        .adder(sw[7:6]),
        .store(btnC),
        .memory(led[15:8])
    );

endmodule