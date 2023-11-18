// Create an audio emitter
em=audio_emitter_create()
audio_max_distance_to_be_heard = 1500;
audio_starts_to_drop_at = 200;
fall_off_rate = 1
// Set audio properties for the emitter
audio_falloff_set_model(audio_falloff_linear_distance)
audio_emitter_position(em, x,y,0)
audio_emitter_falloff(em, audio_starts_to_drop_at, audio_max_distance_to_be_heard, fall_off_rate); // Set the range (how far the sound can be heard)
audio_play_sound_on(em, snd_cannon_shot,false, 1, .2, 0,random_range(1.5, 1.8))

creator = instance_nearest(x,y,obj_boat) 


alarm[1] = 3

lifespan = 80

alarm[0] = lifespan




