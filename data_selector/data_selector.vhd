library IEEE;
use IEEE.std_logic_1164.all;

entity data_selector is
    generic (
        n : INTEGER := 16;
        addressSize : INTEGER := 3
    );
    port (
        WriteExternal : in std_logic;

        RegRD : in std_logic_vector(addressSize-1 downto 0);
        RegRS : in std_logic_vector(addressSize-1 downto 0);

        ALUResult : in std_logic_vector(n-1 downto 0);
        Data      : in std_logic_vector(n-1 downto 0);

        regaddressout : out std_logic_vector(addressSize-1 downto 0);
        out2          : out std_logic_vector(n-1 downto 0)
    );
end entity data_selector;

architecture behavior of data_selector is
begin

    process (WriteExternal, RegRD, RegRS, ALUResult, Data)
    begin
        if WriteExternal = '0' then
            -- Normal/internal data path
            regaddressout <= RegRD;
            out2 <= ALUResult;
        else
            -- External data path
            regaddressout <= RegRS;
            out2 <= Data;
        end if;
    end process;

end architecture behavior;