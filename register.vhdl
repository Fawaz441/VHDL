library ieee;
use ieee_std_logic_1164.all;

entity register is
    port(
        load:in std_logic;
        inp0:in std_logic;
        clk:in std_logic;
        clr:in std_logic;
        q0:out std_logic
    );
end entity;