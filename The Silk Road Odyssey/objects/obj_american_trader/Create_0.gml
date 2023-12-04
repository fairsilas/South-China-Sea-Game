relationship = 50
max_hp = 30
hp = max_hp
max_spd = 100


angle = 0
turnspeed = 2
max_speed = 2

acc = 0.02
rev_acc = 0.01
momentum = 0.085
frict = 0.09

ripple_timer = 0
ripple_freq = 20
ripple_rand = 10


current_state = ship_states.wander

//DIALOGUE DATA
//NPC profile
profile = {
	spr : spr_fob_roster_profile,
	title : "Fob Roster",
	desc : "The captain of this American ship.",
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
		main_text: "Hello, I am Fob Roster. Why did you decide to open communication with us?",
		choices: [["Uh, I don't know.", "In Office"],["I would like to propose a trade.", "Trade Talk1"]],
		scr: "do nothing",
	},
	{
		topic : "Trade Talk1",
		main_text: "Transactions are already carefully planned out, so unfutunately we can't not. However, You may take a look in my office for anything you find interesting.",
		choices: [["Ok.","Trade"], ["Thank you for the offer but I am not interested.","In Office"]],
		scr: "do nothing",
	},
	{
		topic : "In Office",
		main_text: "Ok, well I will be down in my office if you need anything.",
		choices: [["Ok.","end"]],
		scr: "do nothing",
	},
	
	{
		topic : "Trade",
		main_text: "",
		choices: [],
		scr: function(){
			obj_inventory.state = InvStates.trade
		},
	}
]

ls = default_ls







//INVENTORY DATA
my_inventory = ds_list_create()

// Create a DS map to store the trader's item prices
my_prices = ds_map_create();

scr_init_default_prices(my_prices)
// Define item prices for the trader
my_prices[? "Tael of Silver"] = 600;
my_prices[? "Bird Book"] = 45;
my_prices[? "History Book"] = 45;
// Add more items and their prices



item_data =  [{
	title : "Bird Book",
	desc : "It is in english so you don't know how to read it. However, it has some nice bird pictures to look at.",
	weight : 1,
	count : 39,
	sprite : spr_bird_book,
	scr : function(){/*Read the book*/}
},{
	title : "History Book",
	desc : "It is in english so you don't know how to read it. Maybe you can find a translator to read it to you.",
	weight : 1,
	count : 86,
	sprite : spr_history_book,
	scr : function(){/*Read the book*/}
},{
	title : "Copper Coin",
	desc : "A copper coin. Worth around one Copper Coin.",
	weight : 1,
	count : 845,
	sprite : spr_copper_coin,
	scr : function(){
		var vy = camera_get_view_x(view_camera[0])
		var vh = camera_get_view_height(view_camera[0])
			if mouse_check_button_pressed(mb_left) and mouse_y > vy+(vh*0.7){
				scr_tooltip(choose("Heads!","Tails!"))	
			}
		}
}]

for (i=0; i<array_length(item_data); i++){
	scr_add_items(item_data[i], my_inventory)
}