global.state = "Normal";

with (obj_menu_ingame_placeholder) {
    instance_destroy();
}

with (obj_pauseScreen_mainMenu) {
    instance_destroy();
}

with (obj_pauseScreen_retry) {
    instance_destroy();
}

scr_state_setNormal();
