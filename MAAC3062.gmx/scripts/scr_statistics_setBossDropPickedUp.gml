/** 
 * Sets whether or not the boss drop has been picked up.
 *
 * @param argument[0]
 *        Whether or not the boss drop has been picked up.
 *
 * @param argument[1]
 *        sprite_index to display in the HUD
 */
scr_statistics_setData(27, argument[0]);

// Tell boss object HUD item which sprite to draw
if (argument_count >= 2) {
    if (instance_exists(obj_hud_bossObject)) {
        obj_hud_bossObject.drawSprite = argument[1];
        // Trigger the change cue for the boss object HUD item
        
    }
}

