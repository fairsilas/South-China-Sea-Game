enum land_npc_states{
	idle,
	wander,
	flee,
	chase,
	follow,
	attack,
	hurt,
	die,
}


depth = -y
walk_spd = 1
spd = 3
scr_init_pathfinding(spd)

current_state = land_npc_states.follow


//DIALOGUE DATA
//NPC profile
profile = {
	spr : spr_trader_profile_template,
	title : "Tax Collector",
	desc : "A Tax collector for the Qing Dynasty, known for over-extracting taxes from the hardworking people on the docks of Macao.",
}




ls = [
	//dialog starting
	{
		topic : "Hi",
		main_text: "It's time for tax collection. Hand over the taels owed to the Imperial Treasury.",
		choices: [["Over my dead body!", "Fight"],["Yes, here you go.", "Tax"]],
		scr: "do nothing",
	},
	{
		topic : "Fight Talk",
		main_text: "You have disobayed the divine authority of Emperor Qianlong! You are under arrest!",
		choices: [],
		scr: function(){
		}
	},
	{
		topic : "Fight",
		main_text: "",
		choices: [],
		scr: function(){
			obj_inventory.currentInvState = InvStates.def
			obj_qing_official.current_state = land_npc_states.chase
		}
	},
	{
		topic : "Tax",
		main_text: "The magistrate needs his share, and you best not be holding back.",
		choices: [["I can't afford more, Your Excellency. ", "Tax Poor"], ["Of course. Here you go.", "Tax Rich"]],
		scr: "do nothing",
	},
	{
		topic : "Tax Poor",
		main_text: "The Imperial Treasury cares not for your plight. Consider this a penalty for your insolence. The Emperor's justice may be harsh, but it is my discretion that decides your fate.",
		choices: [["Times are tough I can't pay.","Fight"]],
		scr: "do nothing",
	},
	{
		topic : "Tax Rich",
		main_text: "You better not be hiding more.",
		choices: [["That's everything I swear.", "Flee"],["I paid my taxes, that's all I need to pay.", "Fight"]],
		scr: "do nothing",
	},
	{
		topic : "Flee",
		main_text: "",
		choices: [],
		scr: function(){
			obj_inventory.currentInvState = InvStates.def
			obj_qing_official.current_state = land_npc_states.flee
		}
	},
]









//INVENTORY DATA
my_inventory = ds_list_create()

// Create a DS map to store the trader's item prices
my_prices = ds_map_create();

scr_init_default_prices(my_prices)
// Define item prices for the trader
my_prices[? "Tael of Silver"] = 1000;
my_prices[? "Bundle of silk"] = 20;
// Add more items and their prices


item_data =  [{
	title : "Tael of Silver",
	desc : "A Worth around 1000 yuan. Although prices vary greatly depending on area and demand.(More info needed)",
	weight : 1,
	idn : 1,
	count : 1232,
	sprite : spr_silver_ingot,
	scr : function()
        {
			if mouse_check_button_pressed(mb_left){
				instance_create_depth(mouse_x, mouse_y, -1, obj_debree)
			}
        }
},{
	title : "Bundle of silk",
	desc : "Beutiful cloth material",
	weight : 1,
	count : 1,
	idn : 2,
	sprite : spr_copper_coin,
	scr : function()
        {
			if mouse_check_button_pressed(mb_left){
				instance_create_depth(mouse_x, mouse_y, -1, obj_debree)
			}
        }
},{
	title : "Fine Gift Robes",
	desc : "Beautiful silk robes for the high class folks.",
	weight : 1,
	count : 1,
	idn : 3,
	sprite : spr_copper_coin,
	scr : function()
        {
			if mouse_check_button_pressed(mb_left){
				instance_create_depth(mouse_x, mouse_y, -1, obj_debree)
			}
        }
}]

for (i=0; i<array_length(item_data); i++){
	scr_add_items(item_data[i], my_inventory)
}

