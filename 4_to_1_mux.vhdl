library ieee;
use ieee_std_logic_1164.all;

entity mux41 is
    port(
        c:in std_logic_vector(3 downto 0);
        s:in std_logic_vector(1 downto 0);
        z:out std_logic
    );
end entity;

architecture logic of mux41 is
    component mux21a is
        port(
            a:in std_logic;
            b:in std_logic;
            s:in std_logic;
            y:out std_logic
        );
    end component;
    signal v, w:std_logic;
    begin
        m1: mux21a
        port map(
            a => c(0),
            b => c(1),
            s => s(0),
            y => v
        );
        m2:mux21a
        port map(
            a => c(3),
            b => c(4),
            s => s(0),
            y => w
        );
        m3:mux21a
        port map(
            a => v,
            b => w,
            s => s(1),
            y => z
        );

    end architecture logic

