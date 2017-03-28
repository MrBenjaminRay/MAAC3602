/**
 * Ends the level with some dramatic effects.
 *
 */

// Set the variable that prevents damage & other things after level failed
global.currentLevelFailed = true;

// Make sure camera is focusing on player (in case it is aimed elsewhere)
scr_camera_follow_playerObjects();

// Zoom camera slowly to 4x and hold indefinitely
scr_camera_zoom_inIndefinite(4, 3000);

// Start fade-to-black and set message
var tmp = instance_create(0, 0, obj_levelFail_screenFade);
tmp.levelFailReason = "You died."; 

// Set cursors
scr_state_setLevelFailed();


