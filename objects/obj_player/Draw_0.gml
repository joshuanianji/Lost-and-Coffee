/// @description Draw health bar
// You can write your code in this editor


draw_healthbar( x - sprite_width/2 - 3
                , y - sprite_height/2 - 10
                , x + sprite_width/2 + 3
                , y - sprite_height/2 - 17
                , local_health, c_black, c_red, c_lime, 0
                , true, false)

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, direction, color, 1);