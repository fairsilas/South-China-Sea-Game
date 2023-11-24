// Define a struct for less saturated pastel colors
// Define a struct for less saturated pastel colors
pastelColors = {
    pink: make_color_rgb(255, 200, 210),
    blue: make_color_rgb(190, 220, 230),
    green: make_color_rgb(170, 230, 170),
    yellow: make_color_rgb(255, 245, 200),
    purple: make_color_rgb(200, 160, 200),
    orange: make_color_rgb(255, 220, 180),
    mint: make_color_rgb(200, 250, 210),
    peach: make_color_rgb(255, 230, 200),
    lavender: make_color_rgb(220, 220, 250),
    coral: make_color_rgb(255, 160, 130)
};
global.shirt_color = pastelColors.mint


draw_self()
draw_sprite_ext( asset_get_index(sprite_get_name(sprite_index)+"_shirt"), image_index, x,y, image_xscale, image_yscale, image_angle, global.shirt_color, image_alpha)

// Draw the shadow sprite with an offset (adjust as needed)
draw_set_color(c_black)
//draw_sprite_pos(sprite_index, image_index, x,y,   x+sprite_width, y,   x+sprite_width, y+sprite_height, x, y+sprite_height, 0.5);
draw_set_color(c_white)




//draw_self()
depth = -y