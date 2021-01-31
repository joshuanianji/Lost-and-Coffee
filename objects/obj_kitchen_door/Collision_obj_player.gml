/// @description Insert description here
// You can write your code in this editor
if global.monsters <= 0{
	audio_play_sound(snd_door_close,0,0)
	room_goto(level_select)
	}