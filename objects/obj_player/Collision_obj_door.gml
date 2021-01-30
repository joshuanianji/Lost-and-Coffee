/// @description Insert description here
// You can write your code in this editor

var inst;
inst = collision_rectangle(x - 24, y-43, x+24, y+43, obj_door, false, true);
if inst != noone {
	object_set_sprite(inst, spr_door_open);
	show_debug_message("collision with door");
} else {
	show_debug_message("no collision");
}