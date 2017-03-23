/**
 * Ends the level with some dramatic effects.
 *
 * @param argument[0]
 *        The x coordinate where the camera will zoom.
 * @param argument[1]
 *        The y coordinate where the camera will zoom.
 * @param argument[2] 
 *        The message to display to the player (failure reason).
 */
 
var tmp = instance_create(0, 0, obj_levelFail_screenFade);
 
// Zoom camera to x/y (argument[0]/argument[1])
//scr_slowZoom_FixedPosition(argument[0], argument[1]);
 
// Show message (argument[2])
tmp.levelFailReason = argument[2];

