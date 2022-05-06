library ieee;
use ieee_std_logic_1164.all;

entity counter is
    port(
        clk, rst:in std_logic;
        q:out std_logic_vector(15 downto 0)
    );
end entity counter;

architecture logic of counter is
    signal tmp_q : std_logic_vector(15 downto 0);
    begin
        process(clk, rst)
        begin
            if rst = '0' then
                tmp_q <=  (OTHERS => '0');
            elsif rising_edge(clk) then
                tmp_q <= tmp_q + 1;
            end if;
        end process;
        q <= tmp_q;
    ena architecture

