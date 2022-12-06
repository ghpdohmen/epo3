library IEEE;
use IEEE.std_logic_1164.ALL;

entity vgadrive is
port( clock            : in std_logic;  -- 25.175 Mhz clock
        red, green, blue : in std_logic;  -- input values for RGB signals
         -- for current pixel
        Rout, Gout, Bout, H, V, enable : out std_logic); -- VGA drive signals
  -- The signals Rout, Gout, Bout, H and V are output to the monitor.
  -- The row and column outputs are used to know when to assert red,
  -- green and blue to color the current pixel.  For VGA, the column
  -- values that are valid are from 0 to 639, all other values should
  -- be ignored.  The row values that are valid are from 0 to 479 and
  -- again, all other values are ignored.  To turn on a pixel on the
  -- VGA monitor, some combination of red, green and blue should be
  -- asserted before the rising edge of the clock.  Objects which are
  -- displayed on the monitor, assert their combination of red, green and
  -- blue when they detect the row and column values are within their
  -- range.  For multiple objects sharing a screen, they must be combined
  -- using logic to create single red, green, and blue signals.
end vgadrive;

