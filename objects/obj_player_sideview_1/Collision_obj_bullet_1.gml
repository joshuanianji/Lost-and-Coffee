/// @description Lose health, knockback (WIP)
// You can write your code in this editor

// knockback
var move_dir = point_direction(x, y, other.x, other.y);

x -= round(lengthdir_x(20, move_dir));
y -= round(lengthdir_y(20, move_dir));
local_health -= 2;
show_debug_message(local_health);


color = c_red
alarm[0] = room_speed * 0.2;

// destroy bullet
instance_destroy(other);