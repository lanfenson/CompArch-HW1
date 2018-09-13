module gate1
(
  input  A,          // Single bit inputs
  input  B,
  output AandB,
  output nAandB,

  output nA, 
  output nB, 
  output nAornB,

  output AorB,
  output nAorB,

  output nAandnB
);

  //gate 1
  //not(A and B)
  wire A;
  wire B;

  and andgate(AandB, A, B);
  not andgateinv(nAandB, AandB);

  //gate 2
  //notA or notB
  wire nA;
  wire nB;

  not ainv(nA, A);
  not binv(nB, B);
  or orgate(nAornB, nA, nB);

  //gate 3
  //not(A or B)
  
  or orgate(AorB, A, B);
  not orinv(nAorB, AorB);

  //gate 4
  //notA and notB

  not Ainv(nA, A);
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB);
	
endmodule

//module gate2
//(
  //input A,
  //input B,
  //output nA,
  //output nB, 
  //output nAornB
//);

  //gate 2
  //notA or notB
  //wire nA;
  //wire nB;

  //not ainv(nA, A);
  //not binv(nB, B);
  //or orgate(nAornB, nA, nB);

//endmodule

//module gate3
//( 
  //input A,
  //input B,
  //output AorB,
  //output nAorB
//);

  //gate 3
  //not(A or B)
  //wire A;
  //wire B;
  
  //or orgate(AorB, A, B);
  //not orinv(nAorB, AorB);

//endmodule

//module gate4
//(
  //input A,
  //input B, 
  //output nA, 
  //output nB, 
  //output nAandnB
//);
  
  //gate 4
  //notA and notB
  //wire nA;
  //wire nB;
  //not Ainv(nA, A);
  //not Binv(nB, B);
  //and andgate(nAandnB, nA, nB);

//endmodule
