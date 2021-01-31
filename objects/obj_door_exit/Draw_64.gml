/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
if global.text = "exit"{
	draw_text(room_width/2, room_height - sprite_get_height(spr_textbox),"Press space to exit back to the room select")
}
// sin, satan, sickness, sabotage