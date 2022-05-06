library ieee;
use ieee_std_logic_1164.all;

entity mux2_top is
    port(
        sw:in std_logic_vector(1 downto 0);
        btn:in std_logic_vector(0 downto 0);
        ld:out std_logic_vector(0 downto 0)
    );
end entity mux2_top;

architecture mux2_top_logic is 
    component small_mux is
        port(
            a:in std_logic;
            b:in std_logic;
            s:in std_logic;
            y:out std_logic;
        )
    end component;
    begin
        c1:small_mux
        port map(
            a => sw(0),
            b => sw(1),
            s => btn(0),
            y => ld(0)
        )
    end architecture;