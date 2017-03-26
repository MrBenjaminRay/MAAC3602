/**
 * Starts a screen shake on levels where the camera object exists.
 *
 * @param argument[0]
 *        The amount (pixels) by which to shake in any direction.
 *
 * @param argument[1]
 *        The length of time to shake the screen.
 *
 */
 
if (!instance_exists(obj_camera)) {
   show_debug_message("Cannot do screen shake in room without a camera object!");
   return 0;
}
 
// Capture x & y position of view before shake begins, as we
// will be detaching the view from the camera object.
preShakeViewX = view_xview[0];
preShakeViewY = view_yview[0];

obj_camera.screenShakeAmount = argument[0]; 
obj_camera.screenShakeRemaining = argument[1];

