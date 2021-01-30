/// @description platform physics
// You can write your code in this editor

/// @description Deals with movements
// You can write your code in this editor
var rkey = keyboard_check(vk_right)
var lkey = keyboard_check(vk_left)
var jkey = keyboard_check(vk_up)


// check for ground
if place_meeting(x, y+1, obj_wall) {
	vspd = 0
	
	// only jump when we're on the ground
	if (jkey) {
		vspd = -jspd; // negative goes up
	}
} else {
	// in air, move down with gravity
	// 10 is the terminal velocity
	if (vspd < terminal_vel) {
		vspd += grav;
	}
	
}

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

// WE PRIORITIZE X MOVEMENT OVER Y MOVEMENT!

// move horizontally and check for collisiosn
if place_meeting(x+hspd, y, obj_wall) {
	// sign returns 1 or -1, depending on the sign of the value
	// this moves us up RIGHT up to the object
	while (!place_meeting(x+sign(hspd), y, obj_wall)) {
		x += sign(vspd);
	}
	hspd = 0;
}
x += hspd;

// move vertically & vertical collisions
if place_meeting(x, y+vspd, obj_wall) {
	// sign returns 1 or -1, depending on the sign of the value
	// this moves us up RIGHT up to the object
	while (!place_meeting(x, y+sign(vspd), obj_wall)) {
		y += sign(vspd);
	}
	vspd = 0;
}
y += vspd;