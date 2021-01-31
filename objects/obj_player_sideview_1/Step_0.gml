/// @description platform physics
// You can write your code in this editor

/// @description Deals with movements
// You can write your code in this editor
var rkey = keyboard_check(vk_right)
var lkey = keyboard_check(vk_left)
var jkey = keyboard_check(vk_up)



// move to right and lext
if (rkey) {
	hspd = spd;
}

if (lkey) {
	hspd = -spd;
}

// stop moving
if ((!rkey && !lkey) || (rkey && lkey)) {
	hspd = 0;
}


// jumping
if (jkey && grounded) {
	vspd = -jspd; // negative goes up
}

// in air, move down with gravity
// 10 is the terminal velocity
if (vspd < terminal_vel) {
	vspd += grav;
}

/******/
// WE PRIORITIZE X MOVEMENT OVER Y MOVEMENT!
// code gotten from: https://youtu.be/mm_NdkQwx_o
// Game Maker studio: Jump through platforms
/******/

// move horizontally and check for collision
var hcollide;
hcollide = instance_place(x+hspd, y, obj_wall);
if (hcollide != noone){
	// regular wall - can't jump through
	if (hcollide).type == 1 {
		// how much we move the y coordinate to exit the block
		yplus = 0
		while (place_meeting(x+hspd, y-yplus, obj_wall) && yplus <= abs(1*hspd)) yplus += 1;
		if place_meeting(x+hspd, y-yplus, obj_wall)
		{
			while(!place_meeting(x+sign(hspd), y, obj_wall)) x+=sign(hspd);
			hspd = 0;
		}
		else 
		{
			y -= yplus
		}
	}
}

x += hspd;


// move vertically & vertical collisions
// only check for collisions when you move down
var vcollide;
vcollide = instance_place(x, y+vspd, obj_wall);
if (vcollide != noone){
	// regular wall - can't jump through
	if (vcollide).type == 1 
	{
		while (!place_meeting(x, y+sign(vspd), obj_wall)) {
			y += sign(vspd);
		}
		vspd = 0;
		grounded = true;
	}
	// colliding with jump through, and we're moving down
	if (((vcollide).type == 2) && sign(vspd) == 1) 
	{
		if (!place_meeting(x, y, obj_wall))
		{
			while(!place_meeting(x, y+sign(vspd), obj_wall)) y += 1;
			vspd = 0;
			grounded = true;
		}
	}
}
else 
{
	grounded = false;
}

y += vspd;

if (local_health <= 0) 
{
	room_restart();
	global.text = "You died! Try again.";
}