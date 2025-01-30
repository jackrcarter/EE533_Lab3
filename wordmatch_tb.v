`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:00 01/29/2025 
// Design Name: 
// Module Name:    wordmatch_tb 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module wordmatch_tb;
	// Inputs
	reg [111:0] datain;
	reg [55:0] datacomp;
	reg [6:0] wildcard;
	
	// Outputs
	wire match;
	
	// Instantiate
	wordmatch uut(
		.datain(datain),
		.datacomp(datacomp),
		.wildcard(wildcard),
		.match(match)
	);
	
	// Tests
	initial begin
		// Start at 0
		datain = 112'b0;
		datacomp = 56'b0;
		wildcard = 7'b0;
		
		$finish;
	end
	


endmodule
