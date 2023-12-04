depth = -y
hit = false
walk_spd = 1
spd = 3
hp = 30
max_hp = hp
scr_init_pathfinding(spd)


enum land_npc_states{
	idle,
	wander,
	flee,
	chase,
	attack,
	follow,
	hurt,
	leave,
}
current_state = land_npc_states.follow


//DIALOGUE DATA
//NPC profile
profile = {
	spr : spr_trader_profile_template,
	title : "Tax Collector",
	desc : "A Tax collector for the Qing Dynasty.",
}




ls = [
	//dialog starting
	{
		topic : "Hi",
		main_text: "It's time for tax collection. Hand over the taels owed to the Imperial Treasury.",
		choices: [["I already paid them.", "Tax"],["I don't have it right now.", "Fight Talk"],["This is all I have. Here you go.", "Tax"]],
		scr: "do nothing",
	},
	{
		topic : "Fight",
		main_text: "",
		choices: [],
		scr: function(){
			obj_inventory.state = InvStates.def
			obj_qing_official.current_state = land_npc_states.chase
		}
	},
	{
		topic : "Fight Talk",
		main_text: "You will pay in blood for your acts against the divine authority.",
		choices: [["*Fight*", "Fight"]],
		scr: function(){
		}
	},
	{
		topic : "Tax",
		main_text: "You better not be holding anything back. ",
		choices: [["That's everything.", "Leave"], ["I gave you the money. Get off my case!", "Fight Talk"]],
		scr: "do nothing",
	},
	
	{
		topic : "leave",
		main_text: "",
		choices: [],
		scr: function(){
			obj_inventory.state = InvStates.def
			obj_qing_official.current_state = land_npc_states.leave
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

