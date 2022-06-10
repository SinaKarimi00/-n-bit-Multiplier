library ieee;
use ieee.STD_LOGIC_1164.all;
Entity tb is
End;
Architecture testBench of tb is
Component Multiplier_nBit
	generic(num:natural);
	Port( A,B :in STD_LOGIC_VECTOR(num - 1 downto 0);
		P   :out STD_LOGIC_VECTOR((2 * num) - 1 downto 0));
End Component;

Signal A,B : STD_LOGIC_VECTOR(3 downto 0); -- For n bit Multiplier we need A,B,  n-1 downto 0
Signal P   : STD_LOGIC_VECTOR(7 downto 0); -- For n bit Multiplier we need P, (2 * n) - 1 downto 0

Begin
	M1 : Multiplier_nBit 
		generic map(4) -- this's test for 4 bit Multiplier 
		port map(A,B,P);
	Process
	Begin
		A <= "0000";
		B <= "0000";
		wait for 20ns;
		A <= "0011";
		B <= "0011";
		wait;
		End Process;
End;