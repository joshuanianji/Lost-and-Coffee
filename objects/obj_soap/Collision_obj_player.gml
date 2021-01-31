/// @description Insert description here
// You can write your code in this editor
if not level_complete {
	if (keyboard_check(vk_right) or keyboard_check(ord("D"))) and other.x < self.x {
		walkSpeed = [5,0]
	}
	else if (keyboard_check(vk_left) or keyboard_check(ord("A"))) and other.x > self.x{
		walkSpeed = [-5,0]
	}
	else if (keyboard_check(vk_up) or keyboard_check(ord("W"))) and other.y > self.y {
		walkSpeed = [0,-5];
	}
	else if (keyboard_check(vk_down) or keyboard_check(ord("S"))) and other.y < self.y{
		walkSpeed = [0,5];
	}
	audio_play_sound(snd_boop,0,0)
}
