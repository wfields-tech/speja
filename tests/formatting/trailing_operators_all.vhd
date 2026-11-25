architecture rtl of e is
begin
cond <= a and b
and (c or
d);
flags <= a -- first
& b;
process (all) is
begin
if rising_edge(clk) and
enable = '1' then
q <= d;
end if;
end process;
end architecture rtl;
