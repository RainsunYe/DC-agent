module RefModule (
  input [99:0] in,
  output reg [99:0] out
);

  integer i; // Declare the loop variable outside the always block

  always @(*) begin // Use always @(*) instead of always_comb
    for (i = 0; i < 100; i = i + 1) begin // Use an explicit width instead of $bits()
      out[i] = in[99 - i];
    end
  end

endmodule