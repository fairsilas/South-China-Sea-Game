// Create an audio emitter
em=audio_emitter_create()
audio_max_distance_to_be_heard = 1000;
audio_starts_to_drop_at = 100;
fall_off_rate = 1


// Set audio properties for the emitter
audio_falloff_set_model(audio_falloff_linear_distance)
audio_emitter_position(em, x,y,0)
audio_emitter_falloff(em, audio_starts_to_drop_at, audio_max_distance_to_be_heard, fall_off_rate); // Set the range (how far the sound can be heard)


audio_play_sound_on(em, snd_crash,false, 10)

repeat(8){
	instance_create_depth(x,y,depth-1,obj_debree)
}