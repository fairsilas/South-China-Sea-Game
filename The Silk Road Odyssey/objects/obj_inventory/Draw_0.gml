
if (active = true)and room != rm_map{
	
	switch (currentInvState) {
    case InvStates.def:
		//Use equipped item script when equipped
		if equipped_item != noone{
				equipped_item.scr()
		}
		scr_inv()
        break;
	case InvStates.talk:
		scr_inv_dialogue()
		break;

    case InvStates.trade:
		scr_trade()
        break;
	}
}

