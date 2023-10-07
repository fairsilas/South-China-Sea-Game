
var i = my_inventory
if place_meeting(x,y,obj_ship)and keyboard_check_pressed(ord("E")){
	with(obj_inventory){
		trader_inv = i
		currentInvState = InvStates.trade;
	}
	
}