/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module display_3 (
    input clk,
    input rst,
    input [5:0] alufn,
    input [31:0] fromTester,
    input anotherMode,
    output reg [7:0] seg,
    output reg [3:0] sel
  );
  
  
  
  wire [2-1:0] M_ctr_value;
  counter_10 ctr (
    .clk(clk),
    .rst(rst),
    .value(M_ctr_value)
  );
  
  reg [31:0] seg_values;
  reg [15:0] sel_values;
  
  always @* begin
    sel_values[0+3-:4] = 4'h7;
    sel_values[4+3-:4] = 4'hb;
    sel_values[8+3-:4] = 4'hd;
    sel_values[12+3-:4] = 4'he;
    seg_values[0+7-:8] = 8'hff;
    seg_values[8+7-:8] = 8'hff;
    seg_values[16+7-:8] = 8'hff;
    seg_values[24+7-:8] = 8'hff;
    if (anotherMode == 1'h1) begin
      seg_values = fromTester;
    end else begin
      
      case (alufn)
        6'h00: begin
          seg_values[0+7-:8] = 8'h88;
          seg_values[8+7-:8] = 8'ha1;
          seg_values[16+7-:8] = 8'ha1;
        end
        6'h01: begin
          seg_values[0+7-:8] = 8'h92;
          seg_values[8+7-:8] = 8'hc1;
          seg_values[16+7-:8] = 8'h83;
        end
        6'h02: begin
          seg_values[0+7-:8] = 8'hc8;
          seg_values[8+7-:8] = 8'hc8;
          seg_values[16+7-:8] = 8'hc1;
          seg_values[24+7-:8] = 8'hc7;
        end
        6'h18: begin
          seg_values[0+7-:8] = 8'h88;
          seg_values[8+7-:8] = 8'hc8;
          seg_values[16+7-:8] = 8'ha1;
        end
        6'h1e: begin
          seg_values[0+7-:8] = 8'hc0;
          seg_values[8+7-:8] = 8'haf;
        end
        6'h16: begin
          seg_values[0+7-:8] = 8'h86;
          seg_values[16+7-:8] = 8'hc0;
          seg_values[24+7-:8] = 8'haf;
        end
        6'h1a: begin
          seg_values[0+7-:8] = 8'h88;
        end
        6'h20: begin
          seg_values[0+7-:8] = 8'h92;
          seg_values[8+7-:8] = 8'h89;
          seg_values[16+7-:8] = 8'hc7;
        end
        6'h21: begin
          seg_values[0+7-:8] = 8'h92;
          seg_values[8+7-:8] = 8'h89;
          seg_values[16+7-:8] = 8'haf;
        end
        6'h23: begin
          seg_values[0+7-:8] = 8'h92;
          seg_values[8+7-:8] = 8'haf;
          seg_values[16+7-:8] = 8'h88;
        end
        6'h33: begin
          seg_values[0+7-:8] = 8'hc6;
          seg_values[8+7-:8] = 8'hc0;
          seg_values[16+7-:8] = 8'hc8;
          seg_values[24+7-:8] = 8'hc8;
        end
        6'h35: begin
          seg_values[0+7-:8] = 8'h83;
          seg_values[8+7-:8] = 8'hcf;
          seg_values[16+7-:8] = 8'h90;
        end
        6'h37: begin
          seg_values[0+7-:8] = 8'hc7;
          seg_values[8+7-:8] = 8'h86;
          seg_values[16+7-:8] = 8'h92;
          seg_values[24+7-:8] = 8'h92;
        end
      endcase
    end
    seg = seg_values[(M_ctr_value)*8+7-:8];
    sel = sel_values[(M_ctr_value)*4+3-:4];
  end
endmodule