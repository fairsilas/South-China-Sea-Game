hp = 100
max_hp = 100

global.player = self
spd = 1.5
walk_spd = 1.5
sprint_spd = 3
global.can_move = true
spf = 01000
steps = 0

if ! instance_exists(obj_inventory){
	instance_create_depth(x,y, -10000, obj_inventory)	
}