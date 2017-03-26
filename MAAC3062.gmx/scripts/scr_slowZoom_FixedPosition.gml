/**
 * Zooms camera slowly towards a fixed x/y position.
 *
 * Increases or decreases global minerals value by the specified amount.
 * We use a script so that minerals can be changed in various places in code,
 * and we can add effects or animations as needed in a single location (here).
 *
 * @param argument[0]
 *        The x position at the center of the camera
 * @param argument[1]
 *        The y position at the center of the camera
 * @param argument[2]
 *        The amount of time to keep the zoom level before zooming back out
 */

obj_camera.x = argument[0];
obj_camera.y = argument[1];

obj_camera.zoomTimeLeft = argument[2];

view_wview[0] = view_wview[0] / 2;
view_hview[0] = view_hview[0] / 2;

show_debug_message('zooming');

