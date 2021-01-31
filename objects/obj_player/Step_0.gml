/// @description Deals with movements
// You can write your code in this editor
if (keyboard_check(vk_left) && place_free(x - collisionSpeed, y))
{
   walkSpeed[0] = -3.5;
}

if (keyboard_check(vk_right) && place_free(x + collisionSpeed, y))
{
   walkSpeed[0] = 3.5;
}

if keyboard_check(vk_left) && keyboard_check(vk_right)
{	
	walkSpeed[0] = 0	
}

if (keyboard_check(vk_up) && place_free(x, y - collisionSpeed))
{
   walkSpeed[1] = -3.5;
}

if (keyboard_check(vk_down) && place_free(x, y + collisionSpeed))
{
   walkSpeed[1] = 3.5;
}

if keyboard_check(vk_up) && keyboard_check(vk_down) 
{	
	walkSpeed[1] = 0	
}

if keyboard_check_released(vk_left) or keyboard_check_released(vk_right) 
{
	walkSpeed[0] = 0	
}

if keyboard_check_released(vk_up) or keyboard_check_released(vk_down) 
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