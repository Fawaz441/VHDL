library ieee;
use ieee_std_logic_1164.all;

ENTITY mux41 IS
PORT(
    c:in std_logic_vector(3 downto 0);
    s:in std_logic_vector(1 downto 0);
    z:out std_logic
);
end entity;

architecture logic of mux41 is
    begin
        p1:process(s, c)
        begin
            case s is
                when "00" => z <= c(0);
                when "01" => z <= c(1);
                when "10" => z <= c(2);
                when "11" => z <= c(3);
                when others => z<= c(0);
            end case;
        end process;
end architecture;