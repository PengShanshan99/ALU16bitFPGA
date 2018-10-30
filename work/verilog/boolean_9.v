/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module boolean_9 (
    input [3:0] alufn,
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] gate
  );
  
  
  
  always @* begin
    
    case (alufn)
      4'h8: begin
        gate = a & b;
      end
      4'he: begin
        gate = a | b;
      end
      4'h6: begin
        gate = a ^ b;
      end
      4'ha: begin
        gate = a;
      end
      default: begin
        gate = 1'h0;
      end
    endcase
  end
endmodule
