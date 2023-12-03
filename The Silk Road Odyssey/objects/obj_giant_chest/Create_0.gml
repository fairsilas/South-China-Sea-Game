depth = -y

//DIALOGUE DATA
//NPC profile
profile = {
	spr : spr_giant_chest_profile,
	title : "Giant Chest",
	desc : "This chest is your pirate stash, the net worth of items in the chest determine your leaderboard score."
}




ls = [
	//dialog starting
	{
		topic : "Hi",
		main_text: "Would you like to stash or withdraw items from the stash?",
		choices: [["Yes.", "Trade"],["No","end"]],
		scr: "do nothing",
	},
	{
		topic : "Trade",
		main_text: "",
		choices: [],
		scr: function(){
			obj_inventory.state = InvStates.trade
		}
	}
]

item_data = []


//INVENTORY DATA
my_inventory = ds_list_create()

// Create a DS map to store the trader's item prices
my_prices = ds_map_create();

//make everything free because you own all of it
scr_init_empty_prices(my_prices)

for (i=0; i<array_length(item_data); i++){
	scr_add_items(item_data[i], my_inventory)
}

