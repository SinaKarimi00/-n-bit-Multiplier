library ieee;
use ieee.STD_LOGIC_1164.all;
Entity Multiplier_nBit is
	generic(num:natural);
	Port( A,B :in STD_LOGIC_VECTOR(num - 1 downto 0);
		P   :out STD_LOGIC_VECTOR((2 * num) - 1 downto 0));
End;
Architecture Structural of Multiplier_nBit is

Component FA_nBit
	generic(n:natural);
	port( X,Y : in STD_LOGIC_VECTOR(n-1 downto 0);
		Cin : in STD_LOGIC;
		S : out STD_LOGIC_VECTOR(n-1 downto 0);
		Cout : out STD_LOGIC);
End Component;

type MultiplierSignals is array ( num - 1 downto 0) of STD_LOGIC_VECTOR( num - 1 downto 0);
type HelpSignals is array ( num - 2 downto 0) of STD_LOGIC_VECTOR( num - 1 downto 0);

Signal AB : MultiplierSignals;
Signal S : HelpSignals;
Signal Help : HelpSignals;
Signal C :STD_LOGIC_VECTOR(num - 1 downto 0);
Begin
	

	gen1 : for i in 0 to num - 1 generate -- Generate A and B 
			gen2 : for j in 0 to num - 1 generate
				AB(i)(j) <= A(j) and B(i);
				AB(i)(j) <= A(j) and B(i);
				AB(i)(j) <= A(j) and B(i);
				AB(i)(j) <= A(j) and B(i);

			End generate gen2;

	End generate gen1;


	gen3 : for i in 0 to num - 2 generate -- We have two FullAdder less than num
			Process(C,AB,S)
			Begin
				if(i = 0) then 
						Help(i) <=  (C(i) & AB(0)(num - 1 downto 1));
				else
						Help(i) <=  (C(i - 1) & S(i - 1)(num - 1 downto 1));
				End if;
			End Process;

			F1 : FA_nBit	
				generic map(num)
				port map(Help(i), AB(i + 1),'0',S(i),C(i));
				
		End generate gen3;

	P(0) <= AB(0)(0);

	gen4 : for i in 0 to  (2 * num) - 2 generate -- Generate P 
			
			Process(S,C) 
			Begin
				if(i <= num - 2) then
					P(i + 1) <= S(i)(0);
				elsif ( i = (2 * num) - 2)  then
					P(i + 1) <= C(num - 2);
				else
					P(i + 1) <= S(num - 2)(i - (num - 2));
				End if;
			End Process;

		End generate gen4;

End;