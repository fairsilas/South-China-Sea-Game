depth = -y
var s = self
current_state = IDLE

//DIALOGUE DATA
//NPC profile
profile = {
	spr : spr_salt_man_profile,
	title : "Salt Man",
	desc : "He sells salt, a good preservative for meat at sea.",
}




ls = [
	//dialog starting
	{
		topic : "Greeting 1",
		main_text: "Greetings, esteemed merchant. I am Zhang Wei, the salt man. What are you looking for?",
		choices: [
			["What's up Wei-doggie-dog. How about you give me some salt?", "Offended"],
			["Your salt looks low quality.", "Offended"],
			["Honorable Zhang,  your salt is the best quality, I have heard. May I discuss trade with you?", "Haggle1"],
			["Sorry, I have to go actually.", "end"]],
		scr: "do nothing",
	},
	{
		topic : "Haggle1",
		main_text: "Your kind words are noted, esteemed merchant. I take pride in the quality of my salt and salting process. However, a service like mine is not cheap. It will be around 12 copper per fish.",
		choices: [
		["It usually only costs me 3. However I hear you are good. Could you go down to 5?", "Trade Good"],
		["Are you insane! That's way to expensive!", "Offended"],
		["Times are tough so I can't afford it. Would you go any lower?", "Trade Bad"],
		["I'm sorry that is too expensive. I'm not interested.", "Trade bad"]],
		scr: "do nothing",
	},
	{
		topic : "Trade Bad",
		main_text: "Tell you what, I want to give you a good deal. So I can do 10 copper per fish. but that's as low as I'll go.",
		choices: [
		["That works for me.", "Trade"],
		["That's still unreasonably expensive. How hard can it be to cut up and put salt on a fish?", "Offended"],
		["Sorry for the bother, I just can't afford.", "end"]],
		scr: function(){
			//bad prices
			obj_salt_man.my_prices[? "Salted Fish"] = 100010;
			obj_salt_man.my_prices[? "Fresh Fish"] = 100000;
		}
	},
		{
		topic : "Trade Good",
		main_text: "Fine, I can go down to 6 copper per fish but past that and I am cutting my own throat.",
		choices: [
		["Thank you. I am ready to propose a trade.", "Trade"],
		["You damned Mumpsimus! I said 5 was as high as I would go!", "Offended"],
		["Thank you for your time, but I will look elsewhere.", "end"]],
		scr: function(){
			//good prices
			obj_salt_man.my_prices[? "Salted Fish"] = 100006;
			obj_salt_man.my_prices[? "Fresh Fish"] = 100000;

		}
	},
	{
		topic : "Offended",
		main_text: "Watch your tone buddy.",
		choices: [["Sorry, I didn't mean any disrespect.","Leave"],["Ok whatever.","Leave"]],
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
			obj_inventory.state = InvStates.def
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


// Define item prices for the trader
my_prices[? "Salt"] = 1;
my_prices[? "Copper Coin"] = 1;
//good prices
my_prices[? "Salted Fish"] = 100006;
my_prices[? "Fresh Fish"] = 100000;

//bad prices
my_prices[? "Salted Fish"] = 100010;
my_prices[? "Fresh Fish"] = 100000;
// Add more items and their prices


item_data =  [
scr_create_item("Salted Fish", spr_salted_fish, 1, 600, "Keeps a lot longer with added salt as a preservative."),
scr_create_item("Fresh Fish", spr_fresh_fish, 1, 5, "Raw fish will spoil on you journey at sea. Add a preservative to keep it longer."),
]

for (i=0; i<array_length(item_data); i++){
	scr_add_items(item_data[i], my_inventory)
}