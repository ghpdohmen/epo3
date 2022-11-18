configuration vga_main_tb_behaviour_cfg of vga_main_tb is
   for behaviour
      for all: vga_main use configuration work.vga_main_behaviour_cfg;
      end for;
   end for;
end vga_main_tb_behaviour_cfg;
