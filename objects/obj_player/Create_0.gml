/// @description Insert description here
// You can write your code in this editor
click = -1
box = 0

walkSpeed = [0,0]
collisionSpeed = 5.5

global.player_health = 50;
local_health = global.player_health
energy = 100
if (room == tutorial_room) 
{
	show_debug_message("tutorial room - start off")
	global.text = "player";
	global.player_text_count = 0;
}
else 
{
	show_debug_message("not tutorial room")
	global.text = "";
	global.player_text_count = 9
}
color = c_white
// the storage can know whether to say you died or the welcome msg
global.visited_storage = 0
global.monsters = 0 // The number of monsters in the room
shoot = 1 // If the player can shoot a bullet
coffee = 0
