/**
 * Zooms camera in on current target indefinitely, with a customizable
 * zoom-in time.
 *
 * @param argument[0]
 *        The zoom level to use when zooming (e.g. 2, 3.5 4, etc.)
 *
 * @param argument[1]
 *        The length (ms) of the zoom-in transition
 *
 */

if (!instance_exists(obj_camera)) {
    show_debug_message("Camera does not exist. Exiting script scr_camera_zoom_inIndefinite.");
    return 0;
}

// Start zoom transition

with (obj_camera) {
    // Set desired zoom level
    zoomLevelDesired = argument[0];

    // Set zoom in time, zoom time, and zoom out time
    zoomTime = 0; // No zoomTime with indefinite zoom (it's indefinite...)
    zoomInTime = argument[1];
    zoomOutTime = 0; // No zoom out with indefinite zoom

    // Set state stuff
    zoomState = 1;
    zoomState_TimeTotal = zoomInTime;
    zoomState_TimeElapsed = 0;
    zoomTransition_LevelStart = zoomLevelActual; // Start wherever zoom is now
    zoomTransition_LevelEnd = zoomLevelDesired; //End at desired zoom level
    indefiniteZoom = true; // Leaves camera zoomed in indefinitely

}

