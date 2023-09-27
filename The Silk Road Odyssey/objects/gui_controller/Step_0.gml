// Set properties or variables specific to each state
switch (currentState) {
    case state.idle:
		sprite_index = sprite_gui_idle
        // Code for the "Idle" state
        // Set sprite, initialize variables, etc.
        break;
    
    case state.dialog:
	sprite_index = sprite_gui_dialog
        // Code for the "Moving" state
        // Handle movement logic, pathfinding, etc.
        break;
    
    case state.dialog_question:
	sprite_index = sprite_gui_dialog
        // Code for the "Attacking" state
        // Implement attack logic, targeting, damage calculations, etc.
        break;
    
    case state.trading:
		sprite_index = sprite_gui_trading
        // Code for the "Dead" state
        // Handle death animation, remove object from the game, etc.
        break;
}

// Other initialization code for the object goes here