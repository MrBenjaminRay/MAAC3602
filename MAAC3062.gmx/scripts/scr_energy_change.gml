/**
 * Increases or decreases global energy value by the specified amount.
 * We use a script so that energy can be changed in various places in code,
 * and we can add effects or animations as needed in a single location (here).
 *
 * @param argument[0]
 *        The amount by which to change the energy (+ or -).
 */

// Effects/animations
if (argument[0] > 0) {
    // Do something special when level increases
    
    // Boost the icon
    with (obj_hud_levelEnergy) {
        scale = scaleLevelBoosted;
    }
} else if (argument[0] < 0 && global.energy > 0) {
    // Do something special when level decreases (do nothing if level already 0)

    // Shrink the icon    
    with (obj_hud_levelEnergy) {
        scale = scaleLevelShrunk;
    }
} 

 // Increase or decrease the energy by the specified amount
global.energy += argument[0];
if (global.energy < 0) { 
    global.energy = 0; // Prevent negative value
}

// Trigger change cue to display. If already displayed, amount will be added.
with (obj_hud_levelEnergy) {
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

