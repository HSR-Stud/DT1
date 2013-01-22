--Zuweisung in der Port Map durch
--Reihenfolge festgelegt.
[identifier]: component_name
	PORT MAP(signal1, signal2, signal3);

	
--Explizite form:
[identifier]: component_name
	PORT MAP(
		in2 => signal2,
		out => signal3,
		in1 => signal1);