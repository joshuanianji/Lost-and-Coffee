/// @description Insert description here
// You can write your code in this editor


var inst;
// x and y point to the top left point
inst = collision_rectangle(x, y, x+48*image_xscale, y+86*image_yscale, obj_player, true, true);
if inst != noone {
	sprite_index = spr_door_open;
	show_debug_message("collision pog");
} else {
	sprite_index = spr_door_closed;
}
