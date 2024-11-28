module half_adder (input a,b, output sum, carry);

	assign sum = a^b;
	assign carry = a&b;

endmodule

/***********/


module full_adder (a, b, cin, sum, carry);

	wire sum_1, sum_2;

	half_adder HA1(a,b, sum_1, carry_1);
	half_adder HA2(sum_1, cin, sum, carry_2);
	or OR(carry_1, carry_2);

endmodule