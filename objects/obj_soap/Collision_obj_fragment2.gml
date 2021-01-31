/// @description Insert description here
// You can write your code in this editor
global.fragment[1] += 1
instance_destroy(other)
show_debug_message(global.fragment)
level_complete = true;
audio_play_sound(snd_boop,0,0)
global.win += 1