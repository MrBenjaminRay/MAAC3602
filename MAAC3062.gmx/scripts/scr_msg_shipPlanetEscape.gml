/**
 * Creates a new planet escape message box at the specified location.
 *
 * @param argument[0]
 *        The x-axis position to create the message box at.
 *
 * @param argument[1]
 *        The y-axis position to create the message box at.
 *
 * @return
 *        The created message box or noone if one could not be created.
 */
var canProceed = true;

if (is_undefined(argument[0])) {
    show_debug_message("Error: argument[0] of scr_msg_shipPlanetEscape is undefined.");
    canProceed = false;
}

if (is_undefined(argument[1])) {
    show_debug_message("Error: argument[1] of scr_msg_shipPlanetEscape is undefined.");
    canProceed = false;
}

if (canProceed) {
    var messageBox = instance_create(argument[0], argument[1], obj_messageBoxNew);
    ds_list_add(messageBox.list_text, "Press and Hold 'X' to Escape the");
    ds_list_add(messageBox.list_text, "Planet!");
    
    return messageBox;
} else {
    return noone;
}
