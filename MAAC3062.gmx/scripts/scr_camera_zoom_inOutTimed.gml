/**
 * Zooms camera in on current target for the specified period of time.
 * Zoom time doesn't start counting down until zoom level reached, so
 * account for zoom in and out time when you call this script.
 *
 * @param argument[0]
 *        The zoom level to use when zooming (e.g. 2, 3.5 4, etc.)
 *
 * @param argument[1]
 *        The length (ms) of the zoom (after zoom-in, before zoom-out)
 *
 * @param argument[2]
 *        The length (ms) of the zoom-in transition
 *
 * @param argument[3]
 *        The length (ms) of the zoom-out transition
 */

if (!instance_exists(obj_camera)) {
    show_debug_message("Camera does not exist. Exiting script scr_camera_zoom_inOutTimed.");
    return 0;
}

// Start zoom transition
with (obj_camera) {
    // Set desired zoom level
    zoomLevelDesired = argument[0];

    // Set zoom in time, zoom time, and zoom out time
    zoomTime = argument[1];
    zoomInTime = argument[2];
    zoomOutTime = argument[3];
    

    // Set state stuff
    zoomState = 1;
    zoomState_TimeTotal = zoomInTime;
    zoomState_TimeElapsed = 0;
    zoomTransition_LevelStart = zoomLevelActual; // Start wherever zoom is now
    zoomTransition_LevelEnd = zoomLevelDesired; //End at desired zoom level
    indefiniteZoom = false; // Zoom-in time specified, not indefinite.
}

