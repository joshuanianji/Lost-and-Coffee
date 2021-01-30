// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function clicked(box, click){
	if click = 1{
	box = instance_create_layer(353 - sprite_get_width(spr_textbox)/2, 309, "Text", obj_textbox) 
	}
	else{ 
		instance_destroy(obj_textbox)
		box = 0
	}
}