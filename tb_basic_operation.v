
//--------------------------------------------------------------------------------------------------
// File: Basic_Opertation.v
// Purpose: Explain the Basic Operations of verilog
// Concept: 1. Review Logical and BItwiise Operators, lexical operators and numericals. 
//          2. Print the findings in an output text file
// 
// Owner: Rohit Kumar Singh
//--------------------------------------------------------------------------------------------------


`timescale 1ns/1ns
module tb_basic_operation();
reg [3:0] A,B;
integer output_file;

	
//--------------------------------------------------------------------------------------	
initial begin
A=4'b1101;
output_file = $fopen("tb_basic_operation_results.txt","w"); // w = For writing

$fwrite(output_file,"At %0t ns << Starting the Simulation >> \n", $time);
#2;
$fwrite(output_file,"\nAt %0t ns, Starting Question 1, having value of A=%4b \n",$time,A);
#2;
$fwrite(output_file,"The output of &A, where A=%4b is %b \n",$time,&A);
#2;
$fwrite(output_file,"The output of ~&A, where A=%4b is %b \n",$time,~&A);
#2;
$fwrite(output_file,"The output of |A, where A=%4b is %b \n",$time,|A);
#2;
$fwrite(output_file,"The output of ~|A, where A=%4b is %b \n",$time,~|A);
#2;
$fwrite(output_file,"The output of ^A, where A=%4b is %b \n",$time,^A);
#2;
$fwrite(output_file,"The output of ~^A, where A=%4b is %b \n",$time,~^A);
#2;
$fwrite(output_file,"At %0t ns, Ending Question 1, having value of A=%4b \n \n",$time,A);
#2;

A=4'b1010;
B=4'b1x10;
#2;

$fwrite(output_file,"\nAt %0t ns, Starting Question 2, having value of A=%4b and B=%4b \n",$time,A,B);
#2;
$fwrite(output_file,"The output of (A|B), where value of A=%4b and B=%4b is %b\n",A,B,(A|B));
#2;
$fwrite(output_file,"The output of (A+B), where value of A=%4b and B=%4b is %b \n",A,B,(A+B));
#2;
$fwrite(output_file,"The output of (A>B), where value of A=%4b and B=%4b is %b \n",A,B,(A>B));
#2;
$fwrite(output_file,"The output of {{3{A}},B}, where value of A=%4b and B=%4b is %4b \n",A,B,{{3{A}},B});
#2;
$fwrite(output_file,"The output of (A&&B), where value of A=%4b and B=%4b is %b \n",A,B,(A&&B));
#2;
$fwrite(output_file,"The output of (A||B), where value of A=%4b and B=%4b is %b \n",A,B,(A||B));
#2;
$fwrite(output_file,"At %0t ns, Ending Question 2, having value of A=%4b and B=%4b \n \n",$time,A,B);
#2;

A=4'b11x1;
B=4'bx101;
#2;

$fwrite(output_file,"\nAt %0t ns, Starting Question 3, having value of A=%4b and B=%4b \n",$time,A,B);
#2;
$fwrite(output_file,"The output of Case Comparison (A===B), where value of A=%4b and B=%b is %b \n",A,B,(A===B));
#2;
$fwrite(output_file,"The output of Logical Comparison (A==B), where value of A=%4b and B=%b is %b \n",A,B,(A==B));
#2;
$fwrite(output_file,"At %0t ns, Ending Question 3, having value of A=%4b and B=%4b \n \n",$time,A,B);
#2;


$fwrite(output_file,"\nAt %0t ns, Starting Question 4 \n",$time);
#2;
$fwrite(output_file,"The decleration ('h3b) is legal, it's binary interpretation is (8'b 00111011) \n");
#2;
$fwrite(output_file,"The decleration (12'hABC) is legal, it's binary interpretation is (12'b 101010111100) \n");
#2;
$fwrite(output_file,"The decleration (4'X11) is illegal, it's binary interpretation cannot be determined  \n");
#2;
$fwrite(output_file,"The decleration (4'b101011) is legal, it's binary interpretation is (4'b 1011) \n");
#2;
$fwrite(output_file,"The decleration (4'b11?1) is legal, it's binary interpretation is (4'b 11Z1) \n");
#2;
$fwrite(output_file,"The decleration (8'b1100_1100) is legal, it's binary interpretation is (8'b 11001100) \n");
#2;
$fwrite(output_file,"At %0t ns, Ending Question 4 \n \n",$time);
#2;


#15;

$fwrite(output_file,"At %0t ns << Ending the Simulation >> \n",$time);
$fclose(output_file);
end 
//--------------------------------------------------------------------------------------	


endmodule