library ieee;
use ieee.std_logic_1164.all;

entity hazardUnit is
	port(
			isJR, isJump, wasJump, mustBranch : IN STD_LOGIC;
	      flush, wasJumpOut : OUT STD_LOGIC;
			JRopcode: OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);		
		  
end hazardUnit;

ARCHITECTURE Behavior OF hazardUnit is
BEGIN
	
	PROCESS(isJR, isJump, wasJump)
	BEGIN
		flush<='0';
		IF isJR = '1' OR isJump = '1' OR wasJump='1' OR mustBranch = '1' THEN
			flush<='1';
		END IF;
		
		if isJump ='1' then
			JRopcode <= "01";
	
		elsif mustBranch = '1' then
			JRopcode <= "10";
			
		else
			JRopcode<="00";
		end if;
	END PROCESS;
 wasJumpOut <= isJump;

END BEHAVIOR;
		