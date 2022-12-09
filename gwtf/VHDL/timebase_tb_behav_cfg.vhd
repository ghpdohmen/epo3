configuration timebase_tb_behav_cfg of timebase_tb is
   for behav
      for all: timebase use configuration work.timebase_behav_cfg;
      end for;
   end for;
end timebase_tb_behav_cfg;
