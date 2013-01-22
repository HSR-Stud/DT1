process(A,B)
begin
	if	(A = "00") then y <= B(0);
	elsif	(A = "01") then y <= B(1);
	elsif	(A = "10") then y <= B(2);
	else	y <= B(0);
	end if;
end process;

process(C,D)
begin
case C is
	when "00" => y <= E(0);
	when "01" => y <= E(1);
	when "10" => y <= E(2);
	when others => y <= E(3);
end case;
end process;