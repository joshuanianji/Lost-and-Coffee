/// @description shooter collision
// You can write your code in this editor

if (vspd > 0) 
{
	// player was jumping down - kill enemy
	// also make player jump up.
	vspd -= enemyBounce;
	instance_destroy(other);
}
else 
{
	var move_dir = point_direction(x, y, other.x, other.y);

	hspd = round(lengthdir_x(20, move_dir));
	show_debug_message(round(lengthdir_x(20, move_dir)));
	
	local_health -= 20;
	show_debug_message(local_health);
	
	image_alpha = 0.5;
	alarm[0] = room_speed * 0.2;
}
	