
var i = my_inventory
var my_p = my_prices
if place_meeting(x,y,obj_ship)and keyboard_check_pressed(ord("E")){
	with(obj_inventory){
		trader_inv = i
		currentInvState = InvStates.trade;
		current_prices = my_p
	}
	
}