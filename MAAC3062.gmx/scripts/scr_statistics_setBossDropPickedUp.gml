/** 
 * Sets whether or not the boss drop has been picked up.
 *
 * @param argument[0]
 *        Whether or not the boss drop has been picked up.
 *
 * @param argument[1]
 *        sprite_index to display in the HUD
 */
var canProceed = scr_misc_isVariableInitialized(global.levelStats);
canProceed &= scr_misc_isVariableInitialized(argument[0]);
canProceed &= is_real(global.levelStats);

if (canProceed) {
    var levelData = ds_map_find_value(global.levelStats, room);
    levelData[27] = argument[0];
    ds_map_replace(global.levelStats, room, levelData);
}

// Tell boss object HUD item which sprite to draw
if (argument_count >= 2) {
    if (instance_exists(obj_hud_bossObject)) {
        obj_hud_bossObject.drawSprite = argument[1];
        // Trigger the change cue for the boss object HUD item
        
    }
}

