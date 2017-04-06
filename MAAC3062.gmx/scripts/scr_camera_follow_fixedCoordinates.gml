/**
 * Ends the level with some dramatic effects when the last miner dies.
 *
 * @param argument[0]
 *        The x coordinate where the camera will zoom (last miner's death location).
 * @param argument[1]
 *        The y coordinate where the camera will zoom (last miner's death location).
 *
 */
 
if (!instance_exists(obj_camera)) {
    show_debug_message("Camera does not exist. Exiting script scr_camera_follow_fixedCoordinates.");
    return 0;
}

if (instance_exists(obj_camera)) {
    with (obj_camera) {
        followPlayer = false;
        followObj = noone;
        custom_target_x = argument[0];
        custom_target_y = argument[1];
    }
} else {

}

