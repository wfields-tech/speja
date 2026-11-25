architecture rtl of e is

begin

  flags <= x"00" &
           '0' &     -- reserved
           r_cs &    -- checksum
           r_ecc(1); -- error
  one   <= a & b & c;
  two   <= a &
           b;
  three <= a &
           b
           -- a comment in front of the operator
           & c &
           d;
  sum   <= a &
           b
           + c &
           d;
  cond  <= a
           and b
           and (c
                or d);

  u : entity work.x
    port map (
      i =>
        a &
        b &
        c,
      o => y
    );

  folded <= a_rather_long_name_to_fill_the_line(0) &
            a_rather_long_name_to_fill_the_line(1) &
            a_rather_long_name_to_fill_the_line(2);

  process (all) is
  begin

    v := x & y
           when a = '1'
                or b = '1' else
         z;
    report "a" &
           "b"
      severity note;

  end process;

end architecture rtl;
