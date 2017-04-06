global.state = "Paused";

instance_create(global.screenWidth/2, global.screenHeight/2, obj_menu_ingame_placeholder);

var btnMenu = instance_create(0, 0, obj_pauseScreen_mainMenu);
var btnRetry = instance_create(0, 0, obj_pauseScreen_retry);
// Button positions are handled in their own step/draw code

cursor_sprite = noone;
window_set_cursor(cr_default);

