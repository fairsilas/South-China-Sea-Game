
if (active = true){
	//Use equipped item script when equipped
	if equipped_item != noone{
			equipped_item.scr()
	}
	switch (currentInvState) {
    case InvStates.def:
		scr_inv()
        break;

    case InvStates.trade:
		scr_trade()
        break;
	}
}

if keyboard_check_pressed(ord("T")){
	if currentInvState = InvStates.trade{
	currentInvState = InvStates.def
	}else{
	currentInvState = InvStates.trade
	}
}