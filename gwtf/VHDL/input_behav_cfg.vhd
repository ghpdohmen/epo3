configuration input_behav_cfg of input is
   for behav
      for all: counter25mhz use configuration work.counter25mhz_behav_cfg;
      end for;
      for all: shiftregister_9bit use configuration work.shiftregister_9bit_behav_cfg;
      end for;
      for all: sendfsm use configuration work.sendfsm_behav_cfg;
      end for;
      for all: mux use configuration work.mux_behav_cfg;
      end for;
   end for;
end input_behav_cfg;
