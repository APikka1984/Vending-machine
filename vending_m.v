 module vending_machine_18105070(
  input clk,
  input rst,
  input [1:0] in, // 01 = 5 rs, 10 = 10 rs
  output reg out,
  output reg [1:0] change
);

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;

reg [1:0] c_state, n_state;

always @(posedge clk or posedge rst)
  begin
    if (rst)
      begin
        c_state <= S0;
        n_state <= S0;
        change <= 2'b00;
        out <= 0;
      end
    else
      c_state <= n_state;

    case(c_state)
      S0: // State 0 : 0 rs
        begin
          if (in == 2'b00)
            begin
              n_state <= S0;
              out <= 0;
              change <= 2'b00;
            end
          else if (in == 2'b01)
            begin
              n_state <= S1;
              out <= 0;
              change <= 2'b00;
            end
          else if (in == 2'b10)
            begin
              n_state <= S2;
              out <= 0;
              change <= 2'b00;
            end
        end

      S1: // State 1 : 5 rs
        begin
          if (in == 2'b00)
            begin
              n_state <= S0;
              out <= 0;
              change <= 2'b01;
            end
          else if (in == 2'b01)
            begin
              n_state <= S2;
              out <= 0;
              change <= 2'b00;
            end
          else if (in == 2'b10)
            begin
              n_state <= S0;
              out <= 0;
              change <= 2'b00;
            end
        end

      S2: // State 2 : 10 rs
        begin
          if (in == 2'b00)
            begin
              n_state <= S0;
              out <= 0;
              change <= 2'b10;
            end
          else if (in == 2'b01)
            begin
              n_state <= S0;
              out <= 1;
              change <= 2'b00;
            end
          else if (in == 2'b10)
            begin
              n_state <= S0;
              out <= 1;
              change <= 2'b01;
            end
        end
    endcase