depth = -y
walk_spd = 1


enum land_npc_states{
	idle,
	wander,
	flee,
	chase,
	attack,
}
current_state = land_npc_states.idle

//DIALOGUE DATA
//NPC profile
profile = {
	spr : spr_trader_profile_template,
	title : "Qing Official",
	desc : "A lower ranked official for the Qing Government.",
}




ls = [
	//dialog starting
	{
		topic : "Hi",
		main_text: "Hello, what is it?",
		choices: [["Hi", "Greeting"]],
		scr: "do nothing",
	},
	{
		topic : "Greeting",
		main_text: "What are you doing down here?",
		choices: [["I am selling some goods. Would you like to trade?", "Trade"],["I am looking for a ship for a crew of 8 people to sail.", "Ship"],["Uhh.. Just walking around.", "Walk"]],
		scr: "do nothing",
	},
	{
		topic : "Trade",
		main_text: "I am working. I don't trade with people on the docks.",
		choices: [["Ok.","end"]],
		scr: "do nothing",
	},
	{
		topic : "Ship",
		main_text: "Looking for a ship? Visit a Qing extension office for that.",
		choices: [["How about I trade you something for that ship right there?","Trade"], ["Ok, thank you.","end"]],
		scr: "do nothing"
	},
	{
		topic : "Walk",
		main_text: "No. You can't walk down here.",
		choices: [["I got special permission","Goodbye"], ["Yes I can.","Walk"]],
		scr: "do nothing",
	},
	{
		topic : "Goodbye",
		main_text: "Ok then I didn't know.",
		choices: [["Goodbye","end"]],
		scr: "do nothing",
	}
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

