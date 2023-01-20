configuration graph_logic_behav_cfg of graph_logic is
   for behav
      for all: v_counter use configuration work.v_counter_behav_cfg;
      end for;
      for all: h_counter use configuration work.h_counter_behav_cfg;
      end for;
      for all: e_counter use configuration work.e_counter_behav_cfg;
      end for;
      for all: countdown_bar use configuration work.countdown_bar_behav_cfg;
      end for;
   end for;
end graph_logic_behav_cfg;
