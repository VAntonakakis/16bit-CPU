library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MyProgramCounter is
    Port (
        clk         : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        enable      : in  STD_LOGIC;
        nextPC      : in  STD_LOGIC_VECTOR(15 downto 0);
        currentPC   : out STD_LOGIC_VECTOR(15 downto 0)
    );
end MyProgramCounter;

architecture Behavioral of MyProgramCounter is
    signal pc_reg : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
begin

    process(clk, reset)
    begin
        if reset = '1' then
            pc_reg <= (others => '0');

        elsif rising_edge(clk) then
            if enable = '1' then
                pc_reg <= nextPC;
            end if;
        end if;
    end process;

    currentPC <= pc_reg;

end Behavioral;