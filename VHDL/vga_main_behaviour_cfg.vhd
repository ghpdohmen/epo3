configuration vga_main_behaviour_cfg of vga_main is
   for behaviour
      for all: pixelgen use configuration work.pixelgen_behaviour_cfg;
      end for;
      for all: syncunit use configuration work.syncunit_behaviour_cfg;
      end for;
   end for;
end vga_main_behaviour_cfg;
