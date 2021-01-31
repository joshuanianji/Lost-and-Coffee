/// @description Insert description here
// You can write your code in this editor
local_health -= 25;


image_alpha = 0.5;
alarm[1] = room_speed * 0.2;

// destroy bullet
instance_destroy(other);