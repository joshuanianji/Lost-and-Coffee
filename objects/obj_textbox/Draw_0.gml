 /// @description Insert description here
// You can write your code in this editor

if global.dialogue = 1{
text = "This is you. A sleep deprived university student."
}
if global.dialogue = 2{
text = "This is your bed. It's messy and unmade. Just like your current project."
}
stringHeight = string_height(text)
// draw textbox
draw_sprite(spr_textbox, 0, x, y)

// draw text
draw_set_font(story_font)

draw_text_ext(x, y, text, stringHeight, boxWidth)