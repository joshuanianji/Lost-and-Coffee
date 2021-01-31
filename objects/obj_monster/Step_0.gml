/// @description Insert description here
// You can write your code in this editor
// causes the image to face the direction of the player
image_angle = point_direction(x, y, obj_player.x, obj_player.y);
if hp <= 0{
	global.monsters -= 1
	instance_destroy()
}
// When all the enemies are defeated
if global.monsters <= -1 {
	obj_fragment3.visible = true
	
}