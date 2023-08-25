library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity TBFD is
end TBFD;

architecture TEST of TBFD is

  constant NBIT: integer := 8;
	signal	CK:		std_logic :='0';
	signal	RESET:		std_logic :='0';
	signal	D: std_logic_vector(NBIT-1 downto 0) := (OTHERS => '0');
	signal	QSYNCH:	std_logic_vector(NBIT-1 downto 0);
	signal	QASYNCH: std_logic_vector(NBIT-1 downto 0);
	
  component FD is
    Generic ( NBIT: integer := NBIT);
    Port (	D:	In	std_logic_vector(NBIT-1 downto 0);
      CK:	In	std_logic;
      RESET:	In	std_logic;
      Q:	Out	std_logic_vector(NBIT-1 downto 0));
  end component;

begin 
		
	UFD1 : FD
	Port Map ( CK => CK, RESET => RESET, D => D, Q => QSYNCH); -- sinc

	UFD2 : FD
	Port Map ( CK => CK, RESET => RESET, D => D, Q => QASYNCH); -- asinc
	

	RESET <= '0', '1' after 0.6 ns, '0' after 1.1 ns, '1' after 2.2 ns, '0' after 3.2 ns;	
	
	
	D <= (OTHERS => '0'), (OTHERS => '1') after 0.4 ns, (OTHERS => '0') after 1.1 ns, (OTHERS => '1') after 1.4 ns, (OTHERS => '0') after 1.7 ns, (OTHERS => '1') after 1.9 ns;

	
	PCLOCK : process(CK)
	begin
		CK <= not(CK) after 0.5 ns;	
	end process;



	

end TEST;

configuration FDGENTEST of TBFD is
   for TEST
      for UFD1 : FD
         use configuration WORK.CFG_FD_PIPPO; -- sincrono
      end for;
      for UFD2 : FD
         use configuration WORK.CFG_FD_PLUTO; -- asincrono
      end for;
   end for;
end FDGENTEST;

