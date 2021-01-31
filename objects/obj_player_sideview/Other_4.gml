/// @description Insert description here
// You can write your code in this editor


if (room == storage_lv1){
	show_debug_message("init storage room");
	if global.visited_storage {
		global.text = "storage_died";
	} else {
		global.text = "storage_intro";
	}
	global.visited_storage = 1;
	alarm[1] = room_speed * 4;
}

if (room == tutorial_room) {
	show_debug_message("init tutorial room - should delete");
	grav = 0;
}
