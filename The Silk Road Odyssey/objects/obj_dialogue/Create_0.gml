ls = [
	//dialog starting
	{
		topic : "Trade",
		main_text: "Do you want to trade?",
		choices: ["Yes", "no", "maybe"]
	},
	
	{
		topic : "Tradeno",
		main_text: "Ok, sorry to bother you have a nice day.",
		choices: []
	},
	
	{
		topic : "TradeYes",
		main_text: "Yippee let's trade.",
		choices: []
	},
	
	{
		topic : "Trademaybe",
		main_text: "You sure you don't wanna trade?",
		choices: []
	}
]



dia_map = ds_map_create()
for (i=0;i<array_length(ls);i++){
	ds_map_add(dia_map, ls[i].topic, ls[i])
}

current_dia = "Trade"

scr_type_txt(ds_map_find_value(dia_map, current_dia).main_text)

