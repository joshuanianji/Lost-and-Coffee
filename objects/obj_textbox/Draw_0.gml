 /// @description Insert description here
// You can write your code in this editor

// CODE DOESN'T WORK
if global.text = "player"{
	text = "This is you. A sleep deprived university student."
}
if global.text = "bed"{
	text = "This is your bed. It's messy and unmade. Just like your current project."
}
if global.text = "bathroom"{
	text = "The bathroom -sdfsdfsdfsdfsdf"
}
if global.text = "kitchen"{
	text = "The kitchen - pdsdfsdfsfsdfr"
}
if global.text = "storage room"{
	text = "The storage room -sdfdfgsdfgsdfgsdfgr"
}
if global.text = "tutorial"{
	text = "Your room - pdsfasdasfr" 
}
if global.text = "exit" {
	text= "Exit to level select"
}

stringHeight = string_height(text)
// draw textbox
draw_sprite(spr_textbox, 0, x, y)

// draw text
draw_set_font(story_font)
draw_set_alpha(0.8)

draw_text_ext(x, y, text, stringHeight, boxWidth)