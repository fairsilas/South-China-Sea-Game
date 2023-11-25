hp = 100
max_hp = 100

global.player = self
spd = 1.5
walk_spd = 1.5
sprint_spd = 3
global.can_move = true
spf = 01000
steps = 0
enum player_state{
	stab,
	move,
	talk,
	die
}
current_state = player_state.move


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
global.shirt_color = pastelColors.peach


if ! instance_exists(obj_inventory){
	instance_create_depth(x,y, -10000, obj_inventory)	
}