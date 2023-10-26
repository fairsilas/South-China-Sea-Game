


draw_set_font(fnt_default)
draw_text_ext(x,y,currentLetter, 25, (room_width-x*2));


if (alarm[0] <= 0)and (currentIndex <= string_length(txt)){
	currentIndex++;
	currentLetter += string_char_at(txt, currentIndex);
    alarm[0] = room_speed * delay * random_range(0.9, 1.1);	
}