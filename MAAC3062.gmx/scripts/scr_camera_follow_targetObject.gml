/**
 * Sets camera target to an instance of an object.  If object is the main player
 * object, the script will set followPlayer and clear the followObj variable,
 * as followPlayer forces the camera to automatically find the player object 
 * (or death object) and follow it in the step event.
 * If object is not main player object, it sets followPlayer to false and
 * sets the followObj to point to whatever object was passed in.
 *
 * @param argument[0]
 *        The object that the camera should follow
 *
 */

var obj;
if (instance_exists(argument[0])) {
    obj = argument[0];
} else {
    show_debug_message("Camera:  Can't follow specified object as it doesn't exist.");
    return 0;
}

if (obj.object_index == obj_player) {
    obj_camera.followPlayer = true;
    show_debug_message('Camera: Custom object to follow is player, so forcing followPlayer.');
} else {
    obj_camera.followPlayer = false;
    obj_camera.followObj = obj;
}

