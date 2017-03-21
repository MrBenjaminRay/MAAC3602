/**
 * Increases or decreases level-specific kills value by the specified amount.
 * We use a script so that kills can be changed in various places in code,
 * and we can add effects or animations as needed in a single location (here).
 *
 * @param argument[0]
 *        The amount by which to change the kills (+ or -).
 */

 // I don't think we're doing anything with next 2 lines, so possibly remove them. -Ben
var canProceed = scr_misc_isVariableInitialized(global.levelStats);
canProceed &= scr_misc_isVariableInitialized(argument[0]);

if (canProceed) {
    var levelData = ds_map_find_value(global.levelStats, room);
    
    // Effects/animations
    if (argument[0] > 0) {
        // Do something special when level increases
        
        // Boost the icon
        with (obj_hud_levelKills) {
            scale = scaleLevelBoosted;
        }
    } else if (argument[0] < 0 && scr_statistics_getData(28) > 0) {
        // Do something special when level decreases (do nothing if level already 0)
        
        // Shrink the icon    
        with (obj_hud_levelKills) {
            scale = scaleLevelShrunk;
        }
    } 
    
    // DO NOT INCREASE VALUE, AS THAT IS HANDLED IN scr_statistics_incremenetKill()
    // (In energy and minerals script, this is where the value would normally be incremented)
    
    // Trigger change cue to display. If already displayed, amount will be added.
    with (obj_hud_levelKills) {
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
