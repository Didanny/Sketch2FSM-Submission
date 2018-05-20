library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FSM is
Port(	clk : in std_logic;
	reset : in std_logic;
	input : in std_logic;
	state_out : std_logic_vector (2 downto 0));
end FSM;

architecture Behavioral of FSM is

type state is (sSKATE2,sSTATE1,sUNKNOWN,sUNKNOWN,sUNKNOWN,sUNKNOWN,sUNKNOWN);
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
state_out <= "001"
if ( input = '' )
then next_state <= sSTATE1;
else next_state <= sSTATE1;
end if;

when sSTATE1 =>
state_out <= "001"
if ( input = '' )
then next_state <= sSKATE2;
else next_state <= sSTATE1;
end if;

when sSTATE1 =>
state_out <= "001"
if ( input = '' )
then next_state <= sSKATE2;
else next_state <= sSTATE1;
end if;

when sSKATE2 =>
state_out <= "000"
if ( input = 'unknown' )
then next_state <= sSKATE2;
else next_state <= sSKATE2;
end if;

when sUNKNOWN =>
state_out <= "010"
if ( input = '' )
then next_state <= sUNKNOWN;
else next_state <= sUNKNOWN;
end if;

when sUNKNOWN =>
state_out <= "010"
if ( input = '' )
then next_state <= sUNKNOWN;
else next_state <= sUNKNOWN;
end if;

when sUNKNOWN =>
state_out <= "010"
if ( input = '' )
then next_state <= sUNKNOWN;
else next_state <= sUNKNOWN;
end if;

when sUNKNOWN =>
state_out <= "010"
if ( input = '' )
then next_state <= sUNKNOWN;
else next_state <= sUNKNOWN;
end if;

when sUNKNOWN =>
state_out <= "010"
if ( input = '' )
then next_state <= sUNKNOWN;
else next_state <= sUNKNOWN;
end if;

when sUNKNOWN =>
state_out <= "010"
if ( input = '' )
then next_state <= sUNKNOWN;
else next_state <= sUNKNOWN;
end if;

when sUNKNOWN =>
state_out <= "010"
if ( input = '' )
then next_state <= sUNKNOWN;
else next_state <= sUNKNOWN;
end if;

when sUNKNOWN =>
state_out <= "010"
if ( input = '' )
then next_state <= sUNKNOWN;
else next_state <= sUNKNOWN;
end if;

when sUNKNOWN =>
state_out <= "010"
if ( input = '' )
then next_state <= sUNKNOWN;
else next_state <= sUNKNOWN;
end if;

when sUNKNOWN =>
state_out <= "010"
if ( input = '' )
then next_state <= sUNKNOWN;
else next_state <= sUNKNOWN;
end if;

when sUNKNOWN =>
state_out <= "010"
if ( input = '' )
then next_state <= sUNKNOWN;
else next_state <= sUNKNOWN;
end if;

when sUNKNOWN =>
state_out <= "010"
if ( input = '' )
then next_state <= sUNKNOWN;
else next_state <= sUNKNOWN;
end if;

when sUNKNOWN =>
state_out <= "010"
if ( input = '' )
then next_state <= sUNKNOWN;
else next_state <= sUNKNOWN;
end if;

when sUNKNOWN =>
state_out <= "010"
if ( input = '' )
then next_state <= sUNKNOWN;
else next_state <= sUNKNOWN;
end if;

when sUNKNOWN =>
state_out <= "010"
if ( input = '' )
then next_state <= sUNKNOWN;
else next_state <= sUNKNOWN;
end if;

end case;
end process;

end Behavioral;
