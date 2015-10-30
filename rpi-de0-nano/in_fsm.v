module in_fsm(
	clk,
	rst_a,
	i_stream,
	o_event
);

input clk;
input rst_a;
input [7:0] i_stream;

output o_event;

// descriptor

// data queue

endmodule;

//
//
// Test
//
//

module in_fsm_testbench;
reg clk, rst_a;
wire o_event;
reg [7:0] source;

initial begin
	clk = 0;
	rst_a = 0;
	source = 0;
end

always begin
	#5 clk = !clk;
end

always @(posedge clk) begin
	source <= source + 1;
end

in_fsm U0 (
	.clk(clk),
	.rst_a(rst_a),
	.i_stream(source),
	.o_event(o_event)
);

endmodule;