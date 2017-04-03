global.state = "Normal";

with (obj_menu_ingame_placeholder) {
    instance_destroy();
}

with (obj_mainMenu) {
    instance_destroy();
}

scr_state_setNormal();
