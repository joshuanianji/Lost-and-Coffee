/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_right) {
	walkSpeed = [5,0]
}
else if keyboard_check(vk_left) {
	walkSpeed = [-5,0]
}
else if keyboard_check(vk_up) {
	walkSpeed = [0,-5];
}
else if keyboard_check(vk_down) {
	walkSpeed = [0,5];
}
