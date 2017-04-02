if (global.state == "Paused") {
    return 0;
}

// Three scenarios in which we allow the entity to drop
// NOTE: The end of the Entity STEP code includes a check that clears the isDropping flag
// when the entity is no longer colliding with a platform at the same Y position as 
// the platform where we perform the canDrop checks here.  This prevents the flag from
// staying indefinitely, which prevents the entity from dropping through all platforms,
// including the floor.  It also makes it so that if the player releases the drop key while in
// the air above a platform, the flag is cleared (unless the player starts colliding with the
// platform during the same step, in which case a drop should be expected.)

if (place_meeting(x, y, obj_physicsTile)) {
    // Entity is currently colliding with a tile
    
    var tempY = y; // Get copy of Y so we can decrease it until we are at the top of the tile
    var originalY = y; // Get copy of current, actual Y of entity so we can restore it after this test
    while (place_meeting(x, tempY, obj_physicsTile)) {
        tempY--; // Reduce temp Y (go up) until it no longer collides with platform
    }
    // Temporarily move entity up to the temporary Y position
    y = tempY;
    // Check if entity could drop if was at this Y position
    if (scr_entity_canDrop()) {
        // Drop would be allowed from top of this tile
        isDropping = true;          // Set drop flag
        // Remember the Y of the platform where the drop was approved (based on original y)
        var inst = instance_place(x, originalY, obj_physicsTile);
        dropPlatformY = inst.y;
        //show_debug_message("Dropping (v1) with platform y = " + string(dropPlatformY));
    } else {
        // Drop would not be allowed, but do not clear the flag or the variable,
        // as we don't know if it was previously set for a valid drop point
    }
    // Reset the Y for the entity back to the real current value
    y = originalY;
} else {
    // Entity is not currently colliding with a tile
    // Check if there is one immediately below it
    if (place_meeting(x, y+1, obj_physicsTile)) {
        // Entity is 1 pixel above a platform
        // Check if he can drop from this point safely (i.e. not the bottom platform)
        if (scr_entity_canDrop()) {
            // Force him into the platform
            y++;
            // Set the flag
            isDropping = true;
            // Remember the Y of the platform where the drop was approved
            var inst = instance_place(x, y, obj_physicsTile);
            dropPlatformY = inst.y;
            //show_debug_message("Dropping (v2) with platform y = " + string(dropPlatformY));
        }
    } else {
        // Entity is mid-air with no collisions at all
        // Get the tile below the entity and use that platform's y position
        // If the entity can safely drop from there:
        // Set the flag
        // If by the end of the current step the entity is not colliding with that platform,
        // the flag will be cleared and the drop y will be cleared
        
        var tempY = y; // Get copy of Y so we can increase it until we collide with a tile
        var originalY = y; // Get copy of current, actual Y of entity so we can restore it after this test
        while (!place_meeting(x, tempY, obj_physicsTile)) {
            tempY++; // Crank up temp Y (go down) until it no longer collides with platform
        }
        tempY--; // Bring temp y back up above the platform (it would have collided in the last while loop iteration)
        y = tempY;
        if (scr_entity_canDrop()) {
            // Drop would be allowed from top of this tile
            isDropping = true;          // Set drop flag
            // Remember the Y of the platform where the drop was approved (based on original y)
            var inst = instance_place(x, tempY+1, obj_physicsTile);
            dropPlatformY = inst.y;
            //show_debug_message("Dropping (v3) with platform y = " + string(dropPlatformY));
        } else {
            // Drop would not be allowed, but do not clear the flag or the variable,
            // as we don't know if it was previously set for a valid drop point
        }
        // Reset the Y for the entity back to the real current value
        y = originalY;
    }
}

