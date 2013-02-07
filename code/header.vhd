LIBRARY library_name_1 {, libary_name_2; ...};
-- Mit USE wird Bibliotheksinhalt im ganzen VHDL Modul sichtbar
USE library_name.element_name;	-- Nur element_name wird sichtbar
--oder
USE library_name.ALL			-- Alle Elemente werden sichtbar

--Beispiel
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;