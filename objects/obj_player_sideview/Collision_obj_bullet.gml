/// @description Lose health, knockback (WIP)
// You can write your code in this editor

// knockback
var move_dir = point_direction(x, y, other.x, other.y);

x -= round(lengthdir_x(20, move_dir));
y -= round(lengthdir_y(20, move_dir));
show_debug_message(point_direction(x, y, other.x, other.y));


image_alpha = 0.5;
alarm[0] = room_speed * 0.2;

// destroy bullet
instance_destroy(other);