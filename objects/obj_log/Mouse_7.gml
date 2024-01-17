/// @description select and pathfind to log
var _x = x;
var _y = y;
var _this = id;

if global.pause return;

if global.selected_beaver != noone {
	mp_grid_clear_rectangle(obj_game_controller.grid, x - 14, y - 14, x + 14, y + 14);
	global.targeted_object = id;
	targeting_beaver = global.selected_beaver;
}

with (global.selected_beaver) {
	targeted_log = _this;
	path_to_mouse = path_add();
	mp_grid_path(obj_game_controller.grid, path_to_mouse,
		x,
		y,
		_x,
		_y,
		false);
	path_insert_point(path_to_mouse, 0, x, y, 100);

	//if the clicked area doesn't have an object on it then move to location
	//else move to a location and send a message on path end
	path_start(path_to_mouse, beaver_speed, path_action_stop, true);

	walking = true;
}






