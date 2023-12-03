depth = -y

current_state = IDLE

//DIALOGUE DATA
//NPC profile
profile = {
	spr : spr_salt_man_profile,
	title : "Salt Man",
	desc : "This man can salt your meat so it lasts longer. He has salt.",
}




ls = [
	//dialog starting
	{
		topic : "Greeting 1",
		main_text: "Greetings, esteemed merchant. I am Zhang Wei, a humble salt trader known for the purity and quality of my salt. I understand you seek trade discussions. What brings you to my domain, and what is it that you are looking for?",
		choices: [
			["Cut to the chase. What do you want for some salt?", "Offended"],
			["Look, I don't have all day. What's so special about your salt?", "Offended"],
			["Honored Salt Trader, I appreciate the opportunity to engage in trade discussions with someone of your esteemed reputation.", "Greeting 2"],
			["Excuse me, urgent matters require my immediate attention. Farewell.", "end"]],
		scr: "do nothing",
	},
	{
		topic : "Greeting 2",
		main_text: "Your kind words are noted, esteemed merchant. I take pride in the quality of my salt, as it has been crafted with care and tradition. Before we proceed, tell me, what goods do you offer, and what brings you to consider a trade with my salt?",
		choices: [
		["Cut the pleasantries. What's your best offer?", "Offended"],
		["Alright quit yapping. I don't want your salt you keep touching it.", "Offended"],
		["Let's discuss our potential partnership, honorable Salt Trader.",  "Greeting 3"],
		["Excuse me, there is something that needs my attention. Farewell.", "end"]],
		scr: "do nothing",
	},
	{
		topic : "Greeting 3",
		main_text: "In the spirit of collaboration, I propose a fair barter. Your goods for my salt. Additionally, if you have raw meat, I can enhance its preservation through the age-old art of salting. What say you, esteemed merchant?",
		choices: [
		["Stop touching the salt with your dirty fingers!", "Offended"],
		["let's discuss a mutually beneficial trade arrangement.", "Trade"],
		["I would like to salt some meat please.", "Trade"],
		["Excuse me, I must attend to something urgently. Farewell.", "end"]],
		scr: function(){
		
		}
	},
	{
		topic : "Salting",
		main_text: "",
		choices: [],
		scr: function()
		{
		//salt the meat here
		
		
		}
	},
	{
		topic : "Offended",
		main_text: "Your disrespect is unwarranted. Our paths diverge.",
		choices: [["I am sorry, I didn't mean any disrespect.","Leave"],["Ok whatever.","Leave"], ["Wait, don't go I want to trade!","Leave"]],
		scr: "do nothing"
	},
	{
		topic : "Trade",
		main_text: "",
		choices: [],
		scr: function(){
			obj_inventory.state = InvStates.trade
		},
	},
	{
		topic : "Leave",
		main_text: "",
		choices: [],
		scr: function(){
			obj_inventory.state = state.idle
			//obj_salt_man.sprite_index =
			obj_salt_man.hspeed =-1
			obj_salt_man.image_xscale = -1
			obj_salt_man.current_state = FLEE
		},
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
	title : "Salt",
	desc : "Salt is a great tool for preserving meat.",
	weight : 1,
	idn : 1,
	count : 500,
	sprite : spr_silver_ingot,
	scr : function()
        {
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
        }
}]

for (i=0; i<array_length(item_data); i++){
	scr_add_items(item_data[i], my_inventory)
}

