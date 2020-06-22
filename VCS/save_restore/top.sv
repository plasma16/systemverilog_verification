module top;
reg a,b,c,rstn, clk;
logic [3:0] select;
event after_reset;

initial begin
 a = 0;
 b = 0;
 rstn = 0;
 select = 0;
 #20 rstn =1;
 #1 -> after_reset;
end

initial clk = 0;
always #5 clk = ~clk;

always @(after_reset)
 case (select) 
  4'h0: begin
      a = 1;
      #20 b = 1;
      $display("Test 0");
  end
  4'h1: begin
      a = 0;
      #20 b = 1;
      $display("Test 1");
  end
  4'h2: begin
      a = 1;
      #20 b = 0;
      $display("Test 2");
  end
  4'h3: begin
      a = 1;
      #40 b=1;
      $display("Test 3");
  end
endcase

endmodule
