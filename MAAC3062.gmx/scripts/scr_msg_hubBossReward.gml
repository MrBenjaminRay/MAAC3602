/**
 * Creates a new message box at the center of the screen and dims
 * everything behind it.
 *
 * @param argument[0]
 *        The boss number (0 through 5)
 *
 * @return
 *        The created message box or noone if one could not be created.
 */
var canProceed = true;



if (is_undefined(argument[0])) {
    show_debug_message("Error: argument[0] of scr_msg_hubBossReward is undefined.");
    canProceed = false;
}

if (canProceed) {
    var messageBox = instance_create(window_get_width()/2 - 64, window_get_height()/2 - 64, obj_clickMessageBox);
    ds_list_add(messageBox.list_text, "You have defeated a planet leader!");
    ds_list_add(messageBox.list_text, "");
    ds_list_add(messageBox.list_text, "You've gather some crucial materials from");
    ds_list_add(messageBox.list_text, "its remains.");
    ds_list_add(messageBox.list_text, "");
    /*
    ds_list_add(messageBox.list_text, "Research them to undercover their purpose.");
    ds_list_add(messageBox.list_text, "A new ability for the pilot has also been");
    ds_list_add(messageBox.list_text, "Discovered!"); 
    ds_list_add(messageBox.list_text, "");
    ds_list_add(messageBox.list_text, "Head over to the Navigation Array and");
    ds_list_add(messageBox.list_text, "Weapons Research to see your findings.");
    ds_list_add(messageBox.list_text, "");
    ds_list_add(messageBox.list_text, "Click to Research.");
    */
    instance_create(0, 0, obj_dimFilter);
    
    return messageBox;
} else {
    return noone;
}
