configuration vgatest_tb_behaviour_cfg of vgatest_tb is
   for behaviour
      for all: vgatest use configuration work.vgatest_behaviour_cfg;
      end for;
   end for;
end vgatest_tb_behaviour_cfg;
