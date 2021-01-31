/// @description Insert description here
// You can write your code in this editor
var inst;
// x and y point to the top left point
inst = collision_rectangle(x, y, x+48*image_xscale, y+86*image_yscale, obj_player_sideview, true, true);
if inst != noone {
	if play_sound_effect {
		audio_play_sound(snd_door_close,0,0);
	}
	play_sound_effect = false;
	sprite_index = spr_door_open;
	show_debug_message("collision pog");
} else {
	play_sound_effect = true;
	sprite_index = spr_door_closed;
}
