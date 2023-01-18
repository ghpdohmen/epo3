configuration vga_buffer_behav_cfg of vga_buffer is
   for behav
      for all: flipflop use configuration work.flipflop_behav_cfg;
      end for;
   end for;
end vga_buffer_behav_cfg;
