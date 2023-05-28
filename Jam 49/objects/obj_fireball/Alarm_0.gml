if (!orientation) path = path_start(pth_curve_01, 8, path_action_stop, false);
else path = path_start(pth_curve_02, 8, path_action_stop, false);


path_orientation = point_direction(x, y, target_x, target_y);