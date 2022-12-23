configuration vgatest_behaviour_cfg of vgatest is
   for behaviour
      for all: vgadrive use configuration work.vgadrive_behaviour_cfg;
      end for;
   end for;
end vgatest_behaviour_cfg;
