/**
 * Spawns a messageBox that will go away once the player
 * is a certain distance away from it.
 *
 * @param argument[0]
 *        The X position of the message box.
 *
 *
 * @param argument[1]
 *        The Y position of the message box.
 *
 *
 * @param argument[2]
 *        The sprite containing the text to display in the message box.
 *
 *
 * 
 */
 
 instance_create(argument[0], argument[1], obj_messageBoxAnim);
 instance_create(argument[0], argument[1], argument[2]);
