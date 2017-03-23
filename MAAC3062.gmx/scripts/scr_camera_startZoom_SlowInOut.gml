/**
 * Zooms camera in on current target for the specified period of time.
 * Zoom time doesn't start counting down until zoom level reached, so
 * account for zoom in and out time when you call this script.
 *
 * @param argument[0]
 *        The zoom level to use when zooming (e.g. 2, 3.5 4, etc.)
 *
 * @param argument[1]
 *        The amount of time to remain zoomed in once zoom level reached.
 *
 */

obj_camera.zoomLevelDesired = argument[0];
obj_camera.zoomTimeLeft = argument[1];

// Set zoom in/out speeds
obj_camera.zoomInSpeed = 0.001;
obj_camera.zoomOutSpeed = 0.001;

