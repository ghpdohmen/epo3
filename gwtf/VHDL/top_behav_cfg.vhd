configuration top_behav_cfg of top is
   for behav
      for all: mouse use configuration work.mouse_behav_cfg;
      end for;
      for all: logic_top use configuration work.logic_top_behaviour_logic_top_cfg;
      end for;
   end for;
end top_behav_cfg;
