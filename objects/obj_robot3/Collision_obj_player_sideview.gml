/// @description Player collisions
// You can write your code in this editor

if (other.vspd > 0) 
{
	// player was jumping down - die
	// also make player jump up.
	other.vspd -= 20;
	instance_destroy();
}
	