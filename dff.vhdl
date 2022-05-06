library ieee;
use ieee.std_logic_1164.all;
entity dff_b is
    port(
        clk, d:in std_logic;
        q:out std_logic
    );
end entity dff_b;
architecture rtl of dff_b is
    begin
        process(clk)
        begin
            if rising_edge(clk) then
                q <= d;
            end if;
        end process
end architecture rtl;