angle = 0

enum states{
	sit,
	wander,
	attack,
	talk
}

cur_state = states.sit



// Create an audio emitter
em = audio_emitter_create()
audio_max_distance_to_be_heard = 1000;
audio_starts_to_drop_at = 100;
fall_off_rate = 1
depth = 0

// Set audio properties for the emitter
audio_falloff_set_model(audio_falloff_linear_distance)
audio_emitter_position(em, x,y,0)
audio_emitter_falloff(em, audio_starts_to_drop_at, audio_max_distance_to_be_heard, fall_off_rate); // Set the range (how far the sound can be heard)

audio_started = false


//dialogue list
ls = [
	//dialog starting
	{
		topic : "Hi",
		main_text: "Hola.",
		choices: [["Hello", "Greeting"]],
		scr: "do nothing",
	},
	{
		topic : "Greeting",
		main_text: "Hello, how can I help you?",
		choices: [["I want to trade.", "Trade"],["By order of Emperer Qianlong, you are under arrest.", "Arrest"],["You have violated codes of the Guangdong Pirate Confederation", "Codes"]],
		scr: function(){
			instance_create_depth(x,y,-1, obj_marker)
		},
	},
	{
		topic : "Trade",
		main_text: "Well, I don't want to.",
		choices: [["Ok then.", "Greeting"]],
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


