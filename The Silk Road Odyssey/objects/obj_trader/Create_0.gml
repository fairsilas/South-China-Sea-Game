relationship = 50
max_hp = 100
hp = max_hp
max_spd = 2
turn_spd = 6
current_state = states.wander

//DIALOGUE DATA
//NPC profile
profile = {
	spr : spr_trader_profile_template,
	title : "Salt Trader",
	desc : "The registration number is printed on the hull. A legally registered trade vessel.",
}

angry_ls = [
	//dialog starting
	{
		topic : "Hi",
		main_text: "You have damaged our ship! Back down now or we will destroy you.",
		choices: [["Okay.", "end"]],
		scr: "do nothing",
	},
]
default_ls = [
	//dialog starting
	{
		topic : "Hi",
		main_text: "Hello",
		choices: [["Hello", "Greeting"]],
		scr: "do nothing",
	},
	{
		topic : "Greeting",
		main_text: "Hello, how can I help you?",
		choices: [["I want to trade.", "Trade"],["By order of Emperer Qianlong, you are under arrest.", "Arrest"],["You have violated codes of the Guangdong Pirate Confederation", "Codes"]],
		scr: "do nothing",
	},
	{
		topic : "Trade",
		main_text: "",
		choices: [],
		scr: function(){
			obj_inventory.currentInvState = InvStates.trade
		},
	},
	{
		topic : "Arrest",
		main_text: "Nuh uh, you can't arrest me because I'm innocent.",
		choices: [["Oh, I guess I was wrong.","Goodbye"], ["Erm... No you are guilty I think.","Arrest"]],
		scr: "do nothing"
	},
	{
		topic : "Codes",
		main_text: "Nuh uh, I actually didn't violate any codes",
		choices: [["Oh, I didn't realize you actually didn't violate any codes.","Goodbye"], ["Erm... yes you did.","Codes"]],
		scr: "do nothing",
	},
	{
		topic : "Goodbye",
		main_text: "Ok well goodbye then.",
		choices: [["Goodbye","end"]],
		scr: "do nothing",
	}
]

ls = default_ls







//INVENTORY DATA
my_inventory = ds_list_create()

// Create a DS map to store the trader's item prices
my_prices = ds_map_create();

scr_init_default_prices(my_prices)
// Define item prices for the trader
my_prices[? "Tael of Silver"] = 1000;
my_prices[? "Box of silk"] = 20;
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

