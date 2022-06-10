library ieee;
use ieee.STD_LOGIC_1164.all;
Entity FA_nBit is
	generic(n:natural);
	port( X,Y : in STD_LOGIC_VECTOR(n-1 downto 0);
		Cin : in STD_LOGIC;
		S : out STD_LOGIC_VECTOR(n-1 downto 0);
		Cout : out STD_LOGIC);
End;
Architecture Structural of FA_nBit is

Signal t : STD_LOGIC_VECTOR(n downto 0);
Begin
	t(0) <= Cin;
	gen : for i in 0 to n-1 generate
		S(i) <= X(i) xor Y(i) xor t(i);
		t(i+1) <= (X(i) and Y(i)) or (X(i) and t(i)) or (Y(i) and t(i));

	
	End generate;
	Cout <= t(n);
End;