/**
 * Decreases the stats objects relating to miners alive when a miner is killed.
 *
 * @param argument[0]
 *        The amount by which to change the amount (+ or -).
 */

// Effects/animations
if (argument[0] > 0) {
    // Do something special when level increases
    
    // Boost the icon
    with (obj_hud_minersAlive) {
        scale = scaleLevelBoosted;
    }
} else if (argument[0] < 0 && scr_statistics_getData(32) > 0) {
    // Do something special when level decreases (do nothing if level already 0)

    // Shrink the icon    
    with (obj_hud_minersAlive) {
        scale = scaleLevelShrunk;
    }
} 

// Increase or decrease the amount of miners alive by the specified amount
scr_statistics_setData(32, scr_statistics_getData(32) + argument[0]);

if (scr_statistics_getData(32) < 0) { 
    scr_statistics_setData(32, 0); // Prevent negative value
} else {
    // Trigger change cue to display. If already displayed, amount will be added.
    with (obj_hud_minersAlive) {
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
}

