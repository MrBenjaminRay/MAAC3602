/*
 * Tells camera to start following player, which is the default action
 *
 */
 
if (!instance_exists(obj_camera)) {
    show_debug_message("Camera does not exist. Exiting script scr_camera_follow_playerObjects.");
    return 0;
}

// When this variable is set, step code will automatically find the player
// or the player's death animation objects and follow accordingly.

obj_camera.followPlayer = true;
