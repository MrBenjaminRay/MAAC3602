/**
 * NOTE:  This script needs to be reworked after TM adds minerals value for each level.
 * global.minerals should only increase if player leaves level without dying, at which point
 * it is incremented by the # of minerals acquired during the level.
 * 
 * I've temporarily rigged the script below to NOT update global.minerals.
 *
 * Increases or decreases global minerals value by the specified amount.
 * We use a script so that minerals can be changed in various places in code,
 * and we can add effects or animations as needed in a single location (here).
 *
 * @param argument[0]
 *        The amount by which to change the minerals (+ or -).
 */

var canProceed = scr_misc_isVariableInitialized(global.levelStats);
 
// Effects/animations
if (argument[0] > 0) {
    // Do something special when level increases
    
    // Boost the icon
    with (obj_hud_levelMinerals) {
        scale = scaleLevelBoosted;
    }
} else if (argument[0] < 0 && levelData[29] > 0) {
    // Do something special when level decreases (do nothing if level already 0)
    
    // Shrink the icon    
    with (obj_hud_levelMinerals) {
        scale = scaleLevelShrunk;
    }
} 

// Increase or decrease the minerals by the specified amount
// RIGGED:  Remove increase in global.minerals
if (canProceed) {
    var levelData = ds_map_find_value(global.levelStats, room);
    levelData[29] += argument[0];
    ds_map_replace(global.levelStats, room, levelData);
}

if (levelData[29] < 0) {
    levelData[29] += argument[0]; // Prevent negative value
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
    // RIGGED:  changeCueTime in minerals is way long to make it never reset
    changeCueTimeLeft = changeCueTime;
}
