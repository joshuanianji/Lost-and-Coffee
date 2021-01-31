/// @description Insert description here
// You can write your code in this edit
if visible = true{
	show_debug_message("yep")
	if place_meeting(x, y, obj_player){
		global.fragment += 1;
		instance_destroy()
	}
}


