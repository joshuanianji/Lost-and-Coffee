 /// @description Deals with movements
// You can write your code in this editor

var left_prsd = keyboard_check(vk_left) or keyboard_check(ord("A"));
var right_prsd = keyboard_check(vk_right) or keyboard_check(ord("D"));
var up_prsd = keyboard_check(vk_up) or keyboard_check(ord("W"));
var down_prsd = keyboard_check(vk_down) or keyboard_check(ord("S"));

var left_up = keyboard_check_released(vk_left) or keyboard_check_released(ord("A"));
var right_up = keyboard_check_released(vk_right) or keyboard_check_released(ord("D"));
var up_up = keyboard_check_released(vk_up) or keyboard_check_released(ord("W"));
var down_up = keyboard_check_released(vk_down) or keyboard_check_released(ord("S"));

if (left_prsd and place_free(x - collisionSpeed, y))
{
   walkSpeed[0] = -3.5;
}

if right_prsd and place_free(x + collisionSpeed, y)
{
   walkSpeed[0] = 3.5;
}

if left_prsd and right_prsd
{	
	walkSpeed[0] = 0	
}

if up_prsd and place_free(x, y - collisionSpeed)
{
   walkSpeed[1] = -3.5;
}

if down_prsd and place_free(x, y + collisionSpeed)
{
   walkSpeed[1] = 3.5;
}

if up_prsd and down_prsd
{	
	walkSpeed[1] = 0	
}

if left_up or right_up
{
	walkSpeed[0] = 0	
}

if up_up or down_up
{
	walkSpeed[1] = 0	
}

// x
if (place_meeting(x + walkSpeed[0], y, obj_bathroomwall)){
	while (!place_meeting(x + sign(walkSpeed[0]), y, obj_bathroomwall)){
		x += sign(walkSpeed[0]);
	}
	walkSpeed[0] = 0;
}
x += walkSpeed[0]

// y
if (place_meeting(x , y + walkSpeed[1], obj_bathroomwall)){
	while (!place_meeting(x, y + sign(walkSpeed[1]), obj_bathroomwall)){
		y += sign(walkSpeed[1]);
	}
	walkSpeed[1] = 0;
}
y += walkSpeed[1]

// if you die

if (local_health <= 0) 
{
	room_restart();
	local_health = global.player_health
}

// Shooting
if mouse_check_button(mb_left){
	show_debug_message(global.enter_kitchen)
	if global.enter_kitchen = 1 and shoot = 1{
		var bullet = instance_create_layer(x, y, "bullets", obj_player_bullet); // Create a bullet and store its ID in the variable "bullet". We need its ID b/c we want to do a few more things with it.
		with (bullet)
		{
			direction = point_direction(x, y, mouse_x, mouse_y); // Give the bullet a direction
			image_angle = direction
			speed = 10;
		} 
		shoot = 0
		alarm[0] = 30 - coffee
}
}




