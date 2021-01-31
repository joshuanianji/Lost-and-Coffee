/// @description Insert description here
// You can write your code in this editor
var move_dir = point_direction(x, y, other.x, other.y);

x -= round(lengthdir_x(20, move_dir));
y -= round(lengthdir_y(20, move_dir));
local_health -= 25;
show_debug_message(local_health);


image_alpha = 0.5;
alarm[1] = room_speed * 0.2;

// destroy bullet
instance_destroy(other);