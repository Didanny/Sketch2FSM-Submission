library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FSM is
Port(	clk : in std_logic;
	reset : in std_logic;
	input : in std_logic;
	state_out : std_logic_vector (1 downto 0));
end FSM;

architecture Behavioral of FSM is

type state is (sSTATE2,sSTATE1,sSTATE3);
signal current_state, next_state : state;

begin
seq : process (clk, reset)
begin

if (reset = '1') then current_state <= sSTATE1;
elsif (clk' event and clk = '1') then current_state <= next_state;
end if;

end process;

comb : process (input, current_state)
begin

case current_state is
when sSTATE1 =>
state_out <= "01"
if ( input = '1' )
then next_state <= sSTATE1;
else next_state <= sSTATE1;
end if;

when sSTATE2 =>
state_out <= "00"
if ( input = '0' )
then next_state <= sSTATE1;
else next_state <= sSTATE2;
end if;

when sSTATE2 =>
state_out <= "00"
if ( input = '1' )
then next_state <= sSTATE2;
else next_state <= sSTATE2;
end if;

when sSTATE1 =>
state_out <= "01"
if ( input = '0' )
then next_state <= sSTATE3;
else next_state <= sSTATE1;
end if;

when sSTATE3 =>
state_out <= "10"
if ( input = '1' )
then next_state <= sSTATE2;
else next_state <= sSTATE3;
end if;

when sSTATE3 =>
state_out <= "10"
if ( input = '0' )
then next_state <= sSTATE3;
else next_state <= sSTATE3;
end if;

end case;
end process;

end Behavioral;
