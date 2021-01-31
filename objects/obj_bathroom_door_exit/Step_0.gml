/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y, obj_player) {
	if play_sound_effect {
		audio_play_sound(snd_door_close,0,0);
	}
	sprite_index = spr_door_open;
	play_sound_effect = false;
	if keyboard_check_pressed(vk_space) {
		room_goto(level_select)
	}
}
else {
	play_sound_effect = true;
	sprite_index = spr_door_closed;
}