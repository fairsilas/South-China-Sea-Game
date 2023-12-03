
if (active = true)and (instance_exists(obj_player)or instance_exists(obj_ship)){
	
	switch (state) {
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

