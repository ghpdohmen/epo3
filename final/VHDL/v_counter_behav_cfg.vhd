configuration v_counter_behav_cfg of v_counter is
   for behav
      for all: edge_detector use configuration work.edge_detector_behav_cfg;
      end for;
   end for;
end v_counter_behav_cfg;
