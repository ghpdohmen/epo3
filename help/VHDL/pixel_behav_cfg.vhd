configuration pixel_behav_cfg of pixel is
   for behav
      for all: mouse_logic use configuration work.mouse_logic_behav_cfg;
      end for;
      for all: graphic_toplvl use configuration work.graphic_toplvl_behaviour_cfg;
      end for;
   end for;
end pixel_behav_cfg;
