/// @description create vars
// You can write your code in this editor

grav = 1.5;
terminal_vel = 30; // terminal velocity is high
spd = 8;
jspd = 25; // jump speed
hspd = 0;
vspd = 0;
grounded = true;

// enemy stuff
enemyBounce = 35

// This is really bad coding style LMAO
if variable_global_exists("global.player_health") {
	local_health = global.player_health;
} else {
	global.player_health = 100
	local_health = 100;
}
