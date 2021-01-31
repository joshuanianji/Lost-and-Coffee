/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
var view_midx = camera_get_view_width(view_camera[0]) / 2;
var cam_height = camera_get_view_height(view_camera[0])

if global.text = "exit"{
	show_debug_message(global.text)
	draw_text(room_width/2, room_height - boxHeight, "Press space to exit")
}
if global.text = "bathroom"{
	show_debug_message(global.text)
	draw_text(room_width/2, room_height - boxWidth,"The bathroom - press space to enter")
}
if global.text = "tutorial"{
	show_debug_message(global.text)
	draw_text(room_width/2, room_height - boxWidth,"Your room - press space to enter")
}
if global.text = "kitchen"{
	show_debug_message(global.text)
	draw_text(room_width/2, room_height - boxWidth,"The kitchen - press space to enter")
}
if global.text = "storage room"{
	show_debug_message(global.text)
	draw_text(room_width/2, room_height - boxWidth,"The storage room - press space to enter")
}

if global.text = "storage_intro"{
	show_debug_message(global.text)
	draw_text(room_width/2, room_height - boxHeight, "Get to the puzzle at the top. Avoid or kill the monsters!")
}
if global.text = "storage_died"{
	show_debug_message(view_wport[0])
	draw_text(view_midx, room_height - boxHeight,"You died! Hint: Try to get better at the game.")
}
if global.text = "player"{
	show_debug_message(view_midx)
	draw_text(view_midx, cam_height - boxHeight,"player thing")
}