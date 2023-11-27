var check_x = creator.x
var check_y = creator.y
creator.x = -1000
creator.y = -1000
var n = instance_nearest(check_x, check_y, obj_entity)
creator.x = check_x
creator.y =  check_y





if place_meeting(x,y, n)and (current_state != land_npc_states.hurt) and n!= creator{
	n.current_state = land_npc_states.hurt
}


