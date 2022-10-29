architecture my_count of count_8 is
signal t_cnt : unsigned(7 downto 0); -- internal counter signal
begin
process (clk, reset)
begin
if (reset = '1') then
t_cnt <= (others => '0'); -- clear
elsif (rising_edge(clk)) then
if (up = '1') then t_cnt <= t_cnt + 1; -- incr
else
t_cnt <= t_cnt - 1; -- decr
end if;
end if;
end if;
end process;
out <= std