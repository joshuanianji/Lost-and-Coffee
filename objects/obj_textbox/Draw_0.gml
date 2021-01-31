/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
var view_midx = camera_get_view_width(view_camera[0]) / 2;
var cam_height = camera_get_view_height(view_camera[0])

if global.text = "exit"{
	draw_text(room_width/2, room_height - boxHeight, "Press space to exit")
}

if room == level_select {
	if global.text = "bathroom"{
		draw_text(room_width/2, room_height - sprite_get_height(spr_textbox),"The bathroom - press space to enter")
	}
	if global.text = "tutorial"{
		draw_text(room_width/2, room_height - sprite_get_height(spr_textbox),"Your room - press space to enter")
	}
	if global.text = "kitchen"{
		draw_text(room_width/2, room_height - sprite_get_height(spr_textbox),"The kitchen - press space to enter")
	}
	if global.text = "storage room"{
		draw_text(room_width/2, room_height - sprite_get_height(spr_textbox),"The storage room - press space to enter")
	}
}

if global.text = "storage_intro"{
	draw_text(room_width/2, room_height - boxHeight, "Get to the puzzle at the top. Avoid or kill the monsters!")
}
if global.text = "storage_died"{
	draw_text(view_midx, room_height - boxHeight,"You died! Hint: Try to get better at the game.")
}
if room == tutorial_room {
	if global.text = "tutorial_intro"{
	draw_text(view_midx, cam_height - boxHeight,"Click on player to get started")
	}
	if global.text = "player"{
		switch (global.player_text_count) 
			{
				case 0:
					draw_text(view_midx, cam_height - boxHeight,"(Click on player to get started...)")
					break;
				case 1:
					draw_text(view_midx, cam_height - boxHeight,"This is you. Sleep deprived you...")
					break;
				case 2:
					draw_text(view_midx, cam_height - boxHeight,"'Oh boy, I'm so tired from doing Compsci labs all night...'")
					break;
				case 3:
					draw_text(view_midx, cam_height - boxHeight,"'OH NO! THE GAME IS TODAY! I FORGOT!...'")
					break;
				case 4:
					draw_text(view_midx, cam_height - boxHeight,"'I had an idea, but I lost it!...'")
					break;
				case 5:
					draw_text(view_midx, cam_height - boxHeight,"'Oh wait, isn't one of my idea fragments on the top right corner?...'")
					break;
				case 6:
					draw_text(view_midx, cam_height - boxHeight,"'I must have more in the other rooms in my house!...'")
					break;
				case 7:
					draw_text(view_midx, cam_height - boxHeight,"'There's also some red bull, I should drink it...'")
					break;
				case 8:
					draw_text(view_midx, cam_height - boxHeight,"Collect the fragments to win!")
					break;
			}
	
	}
	if global.text = "bed"{
		draw_text(view_midx, cam_height - boxHeight,"This is your bed. Messy and unmade, like your game.")
	}
}
if room == level_select {
	var fragments_collected = global.fragment[0] + global.fragment[1] + global.fragment[2] + global.fragment[3]
	if  fragments_collected == 4 {
		draw_set_color(c_white);
		show_debug_message("collected all fragments");
		draw_text(view_midx, cam_height - boxHeight,"I collected all the fragments. I should go back to my room!");
	} else {
		
		show_debug_message("fragments not collected " + string(global.fragment));
}