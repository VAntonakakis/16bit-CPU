library IEEE;
use IEEE.std_logic_1164.all;

entity Forwarding_Selector is
    generic (
        n : INTEGER := 16
    );
    port (
        operation  : in std_logic_vector(1 downto 0);

        regAddress : in std_logic_vector(n-1 downto 0);
        regAD_MEM  : in std_logic_vector(n-1 downto 0);
        regAD_WB   : in std_logic_vector(n-1 downto 0);

        Output     : out std_logic_vector(n-1 downto 0)
    );
end entity Forwarding_Selector;

architecture behavior of Forwarding_Selector is
begin

    process(operation, regAddress, regAD_MEM, regAD_WB)
    begin
        if operation = "00" then
            -- Normal case: take value from Register File
            Output <= regAddress;

        elsif operation = "10" then
            -- Forward from EX/MEM stage
            Output <= regAD_MEM;

        elsif operation = "01" then
            -- Forward from MEM/WB stage
            Output <= regAD_WB;

        else
            -- No valid forwarding option
            Output <= (others => '0');
        end if;
    end process;

end architecture behavior;