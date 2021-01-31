/// @description Insert description here
// You can write your code in this editor
if global.enter_room = 1{
	if global.player_text_count > 8 {
		click *= -1;
		global.text = "player";
		clicked(box, clicked, 353, 309)
	} else {
		show_debug_message("attempting to advance meg with click = " + string(click) + " and old text count " + string(global.player_text_count))
		global.text = "player";
		global.player_text_count += 1;
		clicked(box, -1, 353, 309)
		clicked(box, 1, 353, 309)
	}
}