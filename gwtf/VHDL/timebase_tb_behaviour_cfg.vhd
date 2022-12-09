configuration timebase_tb_behaviour_cfg of timebase_tb is
   for behaviour
      for all: timebase use configuration work.timebase_behav_cfg;
      end for;
   end for;
end timebase_tb_behaviour_cfg;
