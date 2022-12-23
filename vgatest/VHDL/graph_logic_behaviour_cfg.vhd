configuration graph_logic_behaviour_cfg of graph_logic is
   for behaviour
      for all: submod_vcount use configuration work.submod_vcount_behaviour_cfg;
      end for;
      for all: submod_hcount use configuration work.submod_hcount_behaviour_cfg;
      end for;
      for all: submod_ecount use configuration work.submod_ecount_behaviour_cfg;
      end for;
   end for;
end graph_logic_behaviour_cfg;
