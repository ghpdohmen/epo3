configuration edge_detector_tb_behav_cfg of edge_detector_tb is
   for behav
      for all: edge_detector use configuration work.edge_detector_behav_cfg;
      end for;
   end for;
end edge_detector_tb_behav_cfg;
