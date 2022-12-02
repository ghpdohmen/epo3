configuration vgadriver_tb_behaviour_cfg of vgadriver_tb is
   for behaviour
      for all: vgadriver use configuration work.vgadriver_behaviour_cfg;
      end for;
   end for;
end vgadriver_tb_behaviour_cfg;
