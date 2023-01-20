configuration logic_top_behaviour_top_cfg of logic_top is
   for behaviour_top
      for all: x use configuration work.x_behaviour_x_cfg;
      end for;
      for all: y use configuration work.y_behaviour_y_cfg;
      end for;
      for all: color use configuration work.color_behaviour_color_cfg;
      end for;
   end for;
end logic_top_behaviour_top_cfg;
