module LabL;
wire [31:0]z;
reg  [31:0] a, b;
reg c;
integer i, j, k;

yMux #(.SIZE(32)) my_mux(z, a, b, c);

//initial
//begin
//
//	for(i = 0; i < 4; i = i + 1)
//	begin
//		for(j = 0; j < 4; j = j + 1)
//		begin	
//			for(k = 0; k < 2; k = k + 1)
//			begin
//				a = i;
//				b = j;
//				c = k;
//			
//				#1 $display("a=%b, b=%b, c=%b, z=%b", a, b, c, z);
//			end	
//		end
//	end
//
//end
initial
begin
	repeat (10)
	begin
	a = $random;
	b = $random;
	c = $random % 2;
	#1
	$display("a=%b, b=%b, c=%b, z=%b", a, b, c, z);
	end
end	
endmodule