--Selektive Signalzuweisung
architecture blabla of device is
begin
	with S select
		Y <= E(0) when "00",
				 E(1) when "01",
				 E(2) when "10",
				 E(3) when others;
end architecture blabla;

--Konditionale Signalzuweisung
architecture nomnomnom of something_else is
begin
Y <=	E(0) when S = "00" else
			E(1) when S = "01" else
			E(2) when S = "10" else
			E(3) when others;
end architecture nomnomnom;