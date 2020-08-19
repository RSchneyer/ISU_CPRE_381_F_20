library IEEE;
use IEEE.std_logic_1164.all;

entity Einstein is 

  port(iCLK : in std_logic;
	   iM   : in integer;
       oE   : out integer);

end Einstein;

architecture structure of Einstein is 

  component Mtpl
    port(iCLK : in std_logic;
	     iA   : in integer;
		 iB   : in integer;
		 oC   : out integer);
  end component;
  
  constant cC : integer := 9487;
  
  signal sVALUE_Cc : integer;
  
begin

  -- Calculate c^2 
  g_Mult1: Mtpl
    port MAP(iCLK => iCLK,
	         iA   => cC,
			 iB   => cC,
			 oC   => sVALUE_Cc);

  gMult2: Mtpl
    port MAP(iCLK => iCLK,
	         iA   => iM,
			 iB   => sVALUE_Cc,
			 oC   => oE);
			 
end structure;
