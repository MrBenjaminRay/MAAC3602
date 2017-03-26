/**
 * Resets camera zoom back to normal level, with customizable amount of time
 * over which to change the zoom level.  Pass 0 for instant reset to normal level.
 *
 * @param argument[0]
 *        The length (ms) of the transition to normal zoom level
 *
 */

// Start zoom transition

with (obj_camera) {
    // Set normal zoom level as desired zoom level
    zoomLevelDesired = zoomLevelNormal;

    // Set zoom time, zoom time, and zoom out time
    zoomTime = 0;
    zoomInTime = 0;
    zoomOutTime = argument[0];
    
    // Set state stuff
    zoomState = 1;
    zoomState_TimeTotal = zoomOutTime;
    zoomState_TimeElapsed = 0;
    zoomTransition_LevelStart = zoomLevelActual; // Start wherever zoom is now
    zoomTransition_LevelEnd = zoomLevelDesired; //End at desired zoom level
    indefiniteZoom = false; // Zoom-in time specified, not indefinite.
}

