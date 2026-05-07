library ieee;
use ieee.std_logic_1164.all;

entity forwarder is
	generic(addr_size : INTEGER :=3);
	port(R1AD, R2AD,RegAD_EXMEM,RegAD_MEMWB : IN STD_LOGIC_VECTOR(addr_size-1 downto 0);
	     ForwardA, ForwardB : OUT STD_LOGIC_VECTOR(1 downto 0));
		  
end entity forwarder;

architecture behave of forwarder is
begin
	process (RegAD_EXMEM, RegAD_MEMWB, R1AD,R2AD)
	begin
		-- in the default case pick the values from default registers
		ForwardA <= "00";
		ForwardB <= "00";
		
		if (R1AD = RegAD_EXMEM) then
			--Pick the value from the EX_MEM register
			ForwardA <= "10";
		
		---
		elsif (R1AD = RegAD_MEMWB) then
		   --Pick the value from the MEM_WB regiser
			ForwardA <= "01";
		end if;
			
		--Repeat for the second address
		
		if (R2AD = RegAD_EXMEM) then
			--Pick the value from the EX_MEM register
			ForwardB <= "10";
		elsif (R2AD = RegAD_MEMWB) then
		   --Pick the value from the MEM_WB regiser
			ForwardB <= "01";
		end if;
		
	end process;
	
end architecture behave;

	