/**
 * Increases or decreases global minerals value by the specified amount.
 * We use a script so that minerals can be changed in various places in code,
 * and we can add effects or animations as needed in a single location (here).
 *
 * @param argument[0]
 *        The amount by which to change the energy (+ or -).
 */

// Effects/animations
if (argument[0] > 0) {
    // Do something special when level increases
    
    // Boost the icon
    with (obj_hud_levelMinerals) {
        scale = scaleLevelBoosted;
    }
} else if (argument[0] < 0 && global.minerals > 0) {
    // Do something special when level decreases (do nothing if level already 0)
    
    // Shrink the icon    
    with (obj_hud_levelMinerals) {
        scale = scaleLevelShrunk;
    }
} 

// Increase or decrease the energy by the specified amount
global.minerals += argument[0];
if (global.minerals < 0) {
    global.minerals = 0; // Prevent negative value
}

// Trigger change cue to display. If already displayed, amount will be added.
with (obj_hud_levelMinerals) {
    if (changeCueTimeLeft > 0) {
        // Still displaying a change cue, so add to it
        changeCueAmount += argument[0];
    } else {
        // Not displaying a change cue (or one is fading out), so set new amount
        changeCueAmount += argument[0];
    }
    // Set change cue display time
    changeCueTimeLeft = changeCueTime;
}
