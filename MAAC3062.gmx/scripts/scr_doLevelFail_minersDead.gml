/**
 * Ends the level with some dramatic effects when the last miner dies.
 *
 * @param argument[0]
 *        The x coordinate where the camera will zoom (last miner's death location).
 * @param argument[1]
 *        The y coordinate where the camera will zoom (last miner's death location).
 *
 */

// Set the variable that prevents damage & other things after level failed
global.currentLevelFailed = true;

// Tell camera to focus on location of last miner's death
scr_camera_follow_fixedCoordinates(argument[0], argument[1]);

// Zoom camera slowly to 4x and hold for a long time
scr_camera_zoom_inOutTimed(4, 100000, 3000, 3000);

// Start fade-to-black and set message
var tmp = instance_create(0, 0, obj_levelFail_screenFade);
tmp.levelFailReason = "All of your miners died."; 

// Set cursors
scr_state_setLevelFailed();

