/**
 * Ends the level with some dramatic effects when the last miner dies.
 *
 * @param argument[0]
 *        The x coordinate where the camera will zoom (last miner's death location).
 * @param argument[1]
 *        The y coordinate where the camera will zoom (last miner's death location).
 *
 */
if (instance_exists(obj_camera)) {
    with (obj_camera) {
        followPlayer = false;
        followObj = noone;
        custom_target_x = argument[0];
        custom_target_y = argument[1];
    }
} else {
    show_debug_message("Cannot set camera follow position as obj_camera does not exist!");
}

