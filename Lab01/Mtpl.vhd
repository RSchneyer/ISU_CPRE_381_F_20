-------------------------------------------------------------------------
-- Joseph Zambreno
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------


-- Mtpl.vhd
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains an implementation of a behavioral 
-- Mtpl operating on integer inputs. 
--
--
-- NOTES: Integer data type is not typically useful when doing hardware
-- design. We use it here for simplicity, but in future labs it will be
-- important to switch to std_logic_vector types (unsigned, signed) and 
-- associated math libraries (e.g. numeric_std). 


-- 8/19/16 by JAZ::Design created.
-------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity Mtpl is

  port(iCLK             : in std_logic;
       iA               : in integer;
       iB               : in integer;
       oC               : out integer);

end Mtpl;

architecture behavior of Mtpl is
begin

  process(iCLK, iA, iB)
  begin
    if rising_edge(iCLK) then
	   oC <= iA * iB;
    end if;
  end process;
  
end behavior;
