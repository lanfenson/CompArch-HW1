`include "hw1.v"

module gate_test ();

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire AandB;
  wire nAandB;

  wire nA;
  wire nB;
  wire nAornB;

  wire AorB, nAorB;

  wire nAandnB;

  // Test outputs

  gate1 dut(A, B, AandB, nAandB, nA, nB, nAornB, AorB, nAorB, nAandnB);  // Module to be tested



  // Run sequence of test stimuli
  initial begin
    $display("First DeMorgan's Law");
    $display("A B | AB | ~(AB) ");            // Prints header for truth table
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("%b %b | %b  | %b  ", A,B, AandB, nAandB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("%b %b | %b  | %b  ", A,B, AandB, nAandB);
    A=1;B=0; #1
    $display("%b %b | %b  | %b  ", A,B, AandB, nAandB);
    A=1;B=1; #1
    $display("%b %b | %b  | %b  ", A,B, AandB, nAandB);
    $display();
    $display("A B | ~A ~B | ~A+~B ");
    A=0;B=0; #1
    $display("%b %b |  %b %b  |  %b  ", A,B, nA, nB, nAornB);
    A=0;B=1; #1                                 
    $display("%b %b |  %b %b  |  %b  ", A,B, nA, nB, nAornB);
    A=1;B=0; #1
    $display("%b %b |  %b %b  |  %b  ", A,B, nA, nB, nAornB);
    A=1;B=1; #1
    $display("%b %b |  %b %b  |  %b  ", A,B, nA, nB, nAornB);
    $display("The truth table outputs are the same, so the expressions ~(AB) and ~A+~B are equivalent.");
    $display();
    $display();
    $display("Second DeMorgan's Law");
    $display("A B | A+B | ~(A+B) ");            
    A=0;B=0; #1                                 
    $display("%b %b |  %b  |  %b  ", A,B, AorB, nAorB);
    A=0;B=1; #1                                
    $display("%b %b |  %b  |  %b  ", A,B, AorB, nAorB);
    A=1;B=0; #1
    $display("%b %b |  %b  |  %b  ", A,B, AorB, nAorB);
    A=1;B=1; #1
    $display("%b %b |  %b  |  %b  ", A,B, AorB, nAorB);
    $display();
    $display("A B | ~A ~B | ~A~B ");            
    A=0;B=0; #1                                 
    $display("%b %b |  %b %b  |  %b  ", A,B, nA,nB, nAandnB);
    A=0;B=1; #1                                 
    $display("%b %b |  %b %b  |  %b  ", A,B, nA,nB, nAandnB);
    A=1;B=0; #1
    $display("%b %b |  %b %b  |  %b  ", A,B, nA,nB, nAandnB);
    A=1;B=1; #1
    $display("%b %b |  %b %b  |  %b  ", A,B, nA,nB, nAandnB);
    $display("The truth table outputs are the same, so the expressions ~(A+B) and ~A~B are equivalent.");
  end


endmodule    // End demorgan_test
 

   
