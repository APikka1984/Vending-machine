module vending_machine_tb;
  
  // Inputs
  reg clk;
  reg [1:0] in;
  reg rst;
  
  // Outputs
  wire out;
  wire [1:0] change;
  
  // Instantiate vending machine module
  vending_machine_18105070 uut (
    .clk(clk),
    .rst(rst),
    .in(in),
    .out(out),
    .change(change)
  );

  // Add any testbench code or simulations below if needed
  // ...
  
endmodule
