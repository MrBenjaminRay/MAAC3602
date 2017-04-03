/**
 * Displays a notification sprite with a background modal effect and a continue button.
 *
 * @param argument[0]
 *        The sprite to be displayed
 *
 */

// Note: Position is automatically centered, so any x/y coords are ignored
var inst = instance_create(0, 0, obj_notificationNormal);
inst.sprite_index = argument[0];

