// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function clicked(box, click, x, y){
	if click = 1{
	box = instance_create_layer(x - sprite_get_width(spr_textbox)/2, y, "Text", obj_textbox) 
	}
	else{ 
		instance_destroy(obj_textbox)
		box = 0
	}
}

global.fragment = [0,0,0,0]

