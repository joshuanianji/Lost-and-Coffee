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