configuration mouse_behav_cfg of mouse is
   for behav
      for all: counter25mhz use configuration work.counter25mhz_behav_cfg;
      end for;
      for all: edge_debounce use configuration work.edge_debounce_behav_cfg;
      end for;
      for all: shiftregister_9bit use configuration work.shiftregister_9bit_behav_cfg;
      end for;
      for all: sendfsm use configuration work.sendfsm_behav_cfg;
      end for;
      for all: mux use configuration work.mux_behav_cfg;
      end for;
      for all: timebase use configuration work.timebase_behav_cfg;
      end for;
      for all: main_fsm use configuration work.main_fsm_behav_cfg;
      end for;
      for all: flipflop use configuration work.flipflop_behav_cfg;
      end for;
      for all: flipflop_bufr use configuration work.flipflop_bufr_behav_cfg;
      end for;
      for all: shiftregister_11bit use configuration work.shiftregister_11bit_behav_cfg;
      end for;
   end for;
end mouse_behav_cfg;
