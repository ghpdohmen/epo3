configuration graphic_toplvl_behaviour_cfg of graphic_toplvl is
   for behaviour
      for all: colour_storage use configuration work.colour_storage_behavioral_cfg;
      end for;
      for all: rom_cursor use configuration work.rom_cursor_behavioral_cfg;
      end for;
      for all: vgadrive use configuration work.vgadrive_behaviour_cfg;
      end for;
      for all: graph_logic use configuration work.graph_logic_behav_cfg;
      end for;
   end for;
end graphic_toplvl_behaviour_cfg;
