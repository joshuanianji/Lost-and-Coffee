/// @description Draw healthbar
// You can write your code in this editor


draw_healthbar(x - 5, y - 10, x + sprite_width*image_xscale + 5, y - 17, global.player_health, c_black, c_red, c_lime, 0, true, false)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, direction, c_white, 1);
