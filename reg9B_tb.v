`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:12:01 01/29/2025 
// Design Name: 
// Module Name:    reg9B_tb 
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
module reg9B_tb;
	// Inputs
	reg [71:0] d;
	reg ce;
	reg clk;
	reg clr;
	// Outputs
	wire [71:0] q;
	
	// Instantiation
	reg9B uut(
		.d(d),
		.ce(ce),
		.clk(clk),
		.clr(clr),
		.q(q)
	);
	
	// Set a clock
	initial begin
		forever #50 clk = ~clk;
	end
	
	// Testing
	initial begin
		// Start at 0
		d = 72'b0;
		ce = 1'b0;
		clk = 1'b0;
		clr = 1'b0;
		#100;
		
		// Test 1 : Value w/ CE
		d = 72'd10000;
		ce = 1'b1;
		//clr = 1'b0;
		#100;
		
		// Test 2: Value w/o CE
		d = 72'd400;
		ce = 1'b0;
		#100;
		
		// Test 3: clr
		d = 72'd10000;
		ce = 1'b0;
		clr = 1'b1;
		#100;
		
		// Test 4: value
		d = 72'd790301;
		ce = 1'b1;
		clr = 1'b0;
		#100;
		
		
	
		$finish;
	end


endmodule
