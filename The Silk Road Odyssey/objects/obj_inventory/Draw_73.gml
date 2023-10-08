
if (active = true){
	//Use equipped item script when equipped
	
	switch (currentInvState) {
    case InvStates.def:
		scr_inv()
        break;

    case InvStates.trade:
		scr_trade()
        break;
	}
	
	if equipped_item != noone{
			equipped_item.scr()
	}
}

