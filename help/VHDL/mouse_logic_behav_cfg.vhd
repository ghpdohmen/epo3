configuration mouse_logic_behav_cfg of mouse_logic is
   for behav
      for all: mouse use configuration work.mouse_behav_cfg;
      end for;
      for all: logic_top use configuration work.logic_top_behaviour_top_cfg;
      end for;
   end for;
end mouse_logic_behav_cfg;
