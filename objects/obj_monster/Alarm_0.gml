/// @description Insert description here
// You can write your code in this editor

var bullet = instance_create_layer(x, y, "bullets", obj_kitchen_bullet); // Create a bullet and store its ID in the variable "bullet". We need its ID b/c we want to do a few more things with it.
with (bullet)
{
   direction = point_direction(x, y, obj_player.x, obj_player.y); // Give the bullet a direction
   image_angle = direction
   speed = 10;
}
alarm[0] = room_speed * 0.8; // Reset this alarm so the enemy will shoot after 1 more second. This will loop.