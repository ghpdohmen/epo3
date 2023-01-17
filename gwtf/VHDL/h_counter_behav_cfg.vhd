configuration h_counter_behav_cfg of h_counter is
   for behav
      for all: edge_detector use configuration work.edge_detector_behav_cfg;
      end for;
   end for;
end h_counter_behav_cfg;
