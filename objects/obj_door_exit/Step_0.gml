/// @description Insert description here
// You can write your code in this editor
var inst;
width = obj_player_sideview.x + obj_player_sideview.sprite_width
// x and y point to the top left point
inst = collision_rectangle(x, y, x+48*image_xscale, y+86*image_yscale, obj_player_sideview, true, true);
//show_debug_message(width);

// more vars
var hovering = x <= obj_player_sideview.x and obj_player_sideview.x <= (x + sprite_width) or x <= width and width <= (x + sprite_width);
var spacekey = keyboard_check_pressed(vk_space)


if inst != noone {
	if play_sound_effect {
		audio_play_sound(snd_door_close,0,0);
	}
	play_sound_effect = false;
	sprite_index = spr_door_open;
	
	if hovering {
		global.text = "exit"
	}

} else {
	play_sound_effect = true;
	sprite_index = spr_door_closed;
}       


if spacekey and hovering {
	show_debug_message("exiting");
	room_goto(level_select);
}
