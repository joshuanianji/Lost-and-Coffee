/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
if global.text = "bathroom"{
	draw_text(room_width/2, room_height - sprite_get_height(spr_textbox),"The bathroom")
}
if global.text = "tutorial"{
	draw_text(room_width/2, room_height - sprite_get_height(spr_textbox),"Your room")
}
if global.text = "kitchen"{
	draw_text(room_width/2, room_height - sprite_get_height(spr_textbox),"The kitchen")
}
if global.text = "storage room"{
	draw_text(room_width/2, room_height - sprite_get_height(spr_textbox),"The storage room")
}
