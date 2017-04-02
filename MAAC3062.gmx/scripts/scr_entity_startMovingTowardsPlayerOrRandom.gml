// If player exists on map, this starts the entity moving towards the player.
// Otherwise, a random direction is selected.

if (instance_exists(obj_player)) {
    // Move towards player's direction (horizontally)
    if (obj_player.x <= x) {
        scr_entity_startMovingLeft();
        //show_debug_message('player-based speed selected: LEFT');
    } else {
        scr_entity_startMovingRight();
        //show_debug_message('player-based speed selected: RIGHT');
    }
    //show_debug_message('Speed set: ' + string(movementSpeedDesired));
} else {
    // Select a random horizontal direction
    if (irandom_range(0, 1)) {
        scr_entity_startMovingLeft();
        //show_debug_message('random speed selected: LEFT');
    } else {
        scr_entity_startMovingRight();
        //show_debug_message('random speed selected: RIGHT');
    }
    //show_debug_message('Speed set: ' + string(movementSpeedDesired));
}

