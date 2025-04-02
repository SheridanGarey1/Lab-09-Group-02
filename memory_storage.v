`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2025 04:10:41 PM
// Design Name: 
// Module Name: memory_storage
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module memory_storage(
    input [7:0] data,
    input store,
    input [1:0] adder,
    output [7:0] memory
    );
    
    wire [7:0] byteData[3:0];
    wire byteStore[3:0];
    wire [7:0] byteMemory[3:0];
   
     
     
     
     demux demuxOne(
     .Sel(adder),
     .data(data),
     .E(byteData[0]),
     .F(byteData[1]),
     .G(byteData[2]),
     .H(byteData[3])
     );
     
     demux1_4 demuxTwo(
     .Sel(adder),
     .data(store),
     .E(byteStore[0]), // this needs to go to byteMemory store
     .F(byteStore[1]),
     .G(byteStore[2]),
     .H(byteStore[3])
     );
     
     mux muxOne(
     .Sel(adder),
     .A(byteMemory[0]),
     .B(byteMemory[1]),
     .C(byteMemory[2]),
     .D(byteMemory[3]),
     .Y(memory)
     );
     
     byte_memory byte0(
     .data(byteData[0]),
     .memory(byteMemory[0]),
     .store(byteStore[0])
     );
     
     byte_memory byte1(
     .data(byteData[1]),
     .memory(byteMemory[1]),
     .store(byteStore[1])
     );
     
     byte_memory byte2(
     .data(byteData[2]),
     .memory(byteMemory[2]),
     .store(byteStore[2])
     );
     
     byte_memory byte3(
     .data(byteData[3]),
     .memory(byteMemory[3]),
     .store(byteStore[3])
     );
     
     
endmodule
