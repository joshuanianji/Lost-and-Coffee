/// @description Insert description here
// You can write your code in this editor

show_debug_message("room started");
if (room == storage_lv1){
	if global.visited_storage {
		global.text = "storage_died";
	} else {
		global.text = "storage_intro";
	}
	global.visited_storage = 1;
	alarm[1] = room_speed * 4;
}
