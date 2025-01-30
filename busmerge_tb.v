`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:37:38 01/29/2025 
// Design Name: 
// Module Name:    busmerge_tb 
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
module busmerge_tb;
	// Inputs
	reg [47:0] da;
	reg [63:0] db;
	
	// Outputs
	wire [111:0] q;
	
	// Instantiate
	busmerge uut(
		.da(da),
		.db(db),
		.q(q)
	);
	
	// Tests
	initial begin
		// Start at 0
		da = 48'b0;
		db = 64'b0;
		#100;
		
		// Test 1:
		da = 48'hFFFFFFFFFFFF;
		db = 64'h0;
		#100;
		
		// Test 2:
		da = 48'b0;
		db = 64'hFFFFFFFFFFFFFFFF;
		#100;
		
		$finish;
	end

endmodule
