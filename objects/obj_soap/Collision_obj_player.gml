/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_right) and other.x < self.x {
	walkSpeed = [5,0]
}
else if keyboard_check(vk_left) and other.x > self.x{
	walkSpeed = [-5,0]
}
else if keyboard_check(vk_up) and other.y > self.y {
	walkSpeed = [0,-5];
}
else if keyboard_check(vk_down) and other.y < self.y{
	walkSpeed = [0,5];
}
