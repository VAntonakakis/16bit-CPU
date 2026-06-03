library ieee;
use ieee.std_logic_1164.all;

entity forwarder is
	generic(addr_size : INTEGER :=3);
	port(R1AD, R2AD,RegAD_EXMEM,RegAD_MEMWB : IN STD_LOGIC_VECTOR(addr_size-1 downto 0);
	     ForwardA, ForwardB : OUT STD_LOGIC_VECTOR(1 downto 0));
		  
end entity forwarder;

architecture behave of forwarder is
begin

    process (RegAD_EXMEM, RegAD_MEMWB, R1AD, R2AD)
    begin
        -- Default case: use the normal Register File outputs
        ForwardA <= "00";
        ForwardB <= "00";

        ----------------------------------------------------------------
        -- Forwarding for first ALU operand
        ----------------------------------------------------------------
        if (R1AD = RegAD_EXMEM) then
            -- Pick value from EX/MEM stage
            ForwardA <= "10";

        elsif (R1AD = RegAD_MEMWB) then
            -- Pick value from MEM/WB stage
            ForwardA <= "01";
        end if;

        ----------------------------------------------------------------
        -- Forwarding for second ALU operand
        ----------------------------------------------------------------
        if (R2AD = RegAD_EXMEM) then
            -- Pick value from EX/MEM stage
            ForwardB <= "10";

        elsif (R2AD = RegAD_MEMWB) then
            -- Pick value from MEM/WB stage
            ForwardB <= "01";
        end if;

    end process;

end architecture behave;