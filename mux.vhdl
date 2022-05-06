-- y = ~s&a | s&b
-- library ieee;
-- use ieee.std_logic_1164.all;

-- ENTITY mux is
--     port(
--         s:in std_logic;
--         a:in std_logic;
--         b:in std_logic;
--         y:out std_logic
--     );
-- end entity mux;

-- architecture logic of mux is
--     begin
--         y <= (not s and a) or (s and b)
-- end architecture logic;


-- library ieee;
-- use ieee_std_logic_1164.all;

-- ENTITY mux is
--     port(
--         s:in std_logic;
--         a:in std_logic;
--         b:in std_logic;
--         y:out std_logic
--     );
-- end entity

-- architecture logic of mux is
--     begin
--         p1:process(a,b,s)
--         begin
--             if s = '0' then
--                 y <= a;
--             else
--                 y<=b;
--             end if;
--         end process p1;
-- end architecture;
                

library ieee;
use ieee_std_logic_1164.all;

ENTITY mux is
    port(
        s:in std_logic;
        a:in std_logic;
        b:in std_logic;
        y:out std_logic
    );
end entity

architecture logic of mux is
    begin
        y <= a when s='0' else b;
end architecture logic;