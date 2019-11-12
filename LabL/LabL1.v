module LabL;
	wire z;
	reg  a, b, c;
	integer i, j, k;

	yMux1 test(
		.z(z),
		.a(a),
		.b(b), 
		.c(c)
	);

initial
begin

	for(i = 0; i < 2; i = i + 1)
	begin
		for(j = 0; j < 2; j = j + 1)
		begin	
			for(k = 0; k < 2; k = k + 1)
			begin
			
				a = i;
				b = j;
				c = k;
			
				#1 $display("a=%b, b=%b, c=%b, z=%b", a, b, c, z);
				
			end	
		end
	end

end
endmodule