
q_rate = 4


//defaults
ls = [
	//dialog starting
	{
		topic : "Hi",
		main_text: "ls not set. This is the default text.",
		choices: [["ok.", "end"]],
		scr: "do nothing",
	}
]






with(obj_inventory){
	state = InvStates.talk
}




