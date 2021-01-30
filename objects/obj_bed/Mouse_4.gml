/// @description Insert description here
// You can write your code in this editor
click *= -1
global.dialogue = 2
if click = 1{
box = instance_create_layer(x, y, "Text", obj_textbox) 
}
else{ 
	instance_destroy(box)
	box = 0
}
