module bintogray(output [1:0]g,input [1:0]b);

assign g[0] = b[0]^b[1];
assign g[1] = b[1]&(~b[0])|b[1]&b[0];

endmodule
module graytobin(output [1:0]b,input [1:0]g);

assign b[0] = g[0]^g[1];
assign b[1] = g[1]&(~g[0])|g[1]&g[0];

endmodule