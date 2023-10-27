/* format for topics
	{
		topic : "Trade",
		main_text: "Do you want to trade?",
		choices: [("Yes", "name of topic to go to")]
	}
*/

q_rate = 4


ls = [
	//dialog starting
	{
		topic : "Hi",
		main_text: "Hi.",
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
		main_text: "Well, I don't want to.",
		choices: [["Ok then.", "Goodbye"]],
		scr: "do nothing",
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



dia_map = ds_map_create()
for (i=0;i<array_length(ls);i++){
	ds_map_add(dia_map, ls[i].topic, ls[i])
}


current_dia = ls[0].topic
scr_type_txt(ds_map_find_value(dia_map, current_dia).main_text)
q_showing = false
alarm[0] = q_rate*string_length(ds_map_find_value(dia_map, current_dia).main_text)

