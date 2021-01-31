/// @description Insert description here
// You can write your code in this editor
var inst;
width = obj_player_sideview.x + obj_player_sideview.sprite_width
// x and y point to the top left point
inst = collision_rectangle(x, y, x+48*image_xscale, y+86*image_yscale, obj_player_sideview, true, true);
//show_debug_message(width);

// more vars
var over_bathroom = bathroom.x <= obj_player_sideview.x and obj_player_sideview.x <= (bathroom.x + bathroom.sprite_width) or bathroom.x <= width and width <= (bathroom.x + bathroom.sprite_width);
var over_kitchen =  kitchen.x <= obj_player_sideview.x  and obj_player_sideview.x <= (kitchen.x + kitchen.sprite_width) or kitchen.x <= width and width <= (kitchen.x + kitchen.sprite_width);
var over_storage = storage.x <= obj_player_sideview.x and obj_player_sideview.x <= (storage.x + storage.sprite_width) or storage.x <= width and width <= (storage.x + storage.sprite_width);
var over_tutorial = tutorial.x <= obj_player_sideview.x and obj_player_sideview.x <= (tutorial.x + tutorial.sprite_width) or tutorial.x <= width and width <= (tutorial.x + bathroom.sprite_width);
var spacekey = keyboard_check_pressed(vk_space)


if inst != noone {
	if play_sound_effect {
		audio_play_sound(snd_door_close,0,0);
	}
	play_sound_effect = false;
	sprite_index = spr_door_open;
	
	if over_bathroom {
		global.text = "bathroom"
	} 
	if over_kitchen {
		global.text = "kitchen" 
	} 
	if over_storage {
		global.text = "storage room"
	}
	if over_tutorial {
		global.text = "tutorial"
	}
} else {
	play_sound_effect = true;
	sprite_index = spr_door_closed;
}       


if spacekey {
	if over_bathroom {
		show_debug_message("go to bathroom");
		room_goto(bathroom_lv1);
		global.text = "";
	} 
	if over_kitchen {
		show_debug_message("go to kitchen");
		room_goto(kitchen_lv1);
		global.text = "";
	} 
	if over_storage {
		show_debug_message("go to storage");
		room_goto(storage_lv1);
		global.text = "";
	}
	if over_tutorial {
		show_debug_message("go to tutorial");
		room_goto(tutorial_room);
		global.text = "";
	}
}
