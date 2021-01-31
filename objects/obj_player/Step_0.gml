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

if (keyboard_check(vk_up) && !(room == level_select) && place_free(x, y - collisionSpeed))
{
   y -= walkSpeed;
}

if (keyboard_check(vk_down) && !(room == level_select) && place_free(x, y + collisionSpeed))
{
   y += walkSpeed;
}
