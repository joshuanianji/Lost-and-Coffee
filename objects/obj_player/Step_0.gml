/// @description Deals with movements
// You can write your code in this editor
if keyboard_check(vk_left)
{
   x -= 3;
}

if keyboard_check(vk_right)
{
   x += 3;
}

if keyboard_check(vk_up)
{
   y -= 3;
}

if keyboard_check(vk_down)
{
   y += 3;
}



if box == 1{
box = instance_create_layer(x, y, "Text", obj_textbox) 
alarm[0] = 120}
