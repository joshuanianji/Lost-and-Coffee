/// @description Insert description here
// You can write your code in this editor

/// @description Deals with movements
// You can write your code in this editor
if (keyboard_check(vk_left) && place_free(x - collisionSpeed, y))
{
   x -= walkSpeed;
}

if (keyboard_check(vk_right) && place_free(x + collisionSpeed, y))
{
   x += walkSpeed;
}


if box == 1{
  box = instance_create_layer(x, y, "Text", obj_textbox) 
  alarm[0] = 120
}
