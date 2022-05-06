library ieee;
use ieee_std_logic_1164.all;

entity fourbitreg is
    port(
        load:in std_logic;
        clk:in std_logic;
        inp: in std_logic_vector(3 downto 0);
        q:out std_logic_vector(3 downto 0);
        clr:in std_logic
    );
end entity fourbitreg;

architecture logic of fourbitreg is
    begin
        process(clk, clr)
        begin
            if clr = '1' then 
                q <= "0000";
            elsif clk'event and clk='1' then
                if load = '1' then
                    q<=inp;
                end if;
            end if;
        end process;
end architecture;