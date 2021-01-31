/// @description Insert description here
// You can write your code in this editor
with(other){
	audio_play_sound(snd_door_close,0,0)
	room_goto(level_select)
	global.enter_room = 0 // left the room\
	}