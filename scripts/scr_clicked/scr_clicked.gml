// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function clicked(box, click){
	if click = 1{
	box = instance_create_layer(x, y, "Text", obj_textbox) 
	show_debug_message(box)
	}
	else{ 
		instance_destroy(box)
		box = 0
		show_debug_message(box)
	}
}