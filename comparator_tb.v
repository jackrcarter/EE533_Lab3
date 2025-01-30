`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:57:52 01/29/2025 
// Design Name: 
// Module Name:    comparator_tb 
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
module comparator_tb;
	// Inputs
	reg [55:0] a;
	reg [55:0] b;
	reg [6:0] amask;
	
	// Outputs
	wire match;
	
	// Instantiate
	comparator uut(
		.a(a),
		.b(b),
		.amask(amask),
		.match(match)
	);
	
	// Tests
	initial begin
		// Start at 0
		a     = 56'b0;
		b     = 56'b0;
		amask = 7'b0;
		#100;
		
		// Test 1
		a     = 56'd8000;
		b     = 56'd8000;
		amask = 7'b1111111;
		#100;
		
		// Test 2
		a     = 56'hF00000000000FF;
		b     = 56'hF0000000000000;
		amask = 7'b1111110;
		#100;
		
		// Test 3
		a     = 56'hF00000000000FF;
		b     = 56'hF0000000000000;
		amask = 7'b1111111;
		#100;
		
		// Test 4
		a     = 56'hF000F0000000FF;
		b     = 56'hFF000F00000000;
		amask = 7'b0001111;
		#100;
		
		// Test 5
		a     = 56'hF000F0000000FF;
		b     = 56'hFF000F000000FF;
		amask = 7'b0001111;
		#100;
		
		$finish;
	end


endmodule
