// Define a struct for less saturated pastel colors
// Define a struct for less saturated pastel colors

if keyboard_check_pressed(ord("T")){
	global.shirt_color = choose(pastelColors.peach, pastelColors.coral, pastelColors.mint, pastelColors.green, pastelColors.lavender, pastelColors.orange)
}


draw_self()
draw_sprite_ext( asset_get_index(sprite_get_name(sprite_index)+"_shirt"), image_index, x,y, image_xscale, image_yscale, image_angle, global.shirt_color, image_alpha)



scr_draw_shadow()







depth = -y