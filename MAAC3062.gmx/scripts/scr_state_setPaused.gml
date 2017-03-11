global.state = "Paused";

if (window_get_fullscreen()) {
    instance_create(global.screenWidth/2, global.screenHeight/2, obj_menu_ingame_placeholder);
    instance_create(global.screenWidth/2, global.screenHeight/2 + 100, obj_mainMenu);
} else {
    instance_create(view_wview[0]/2, view_hview[0]/2, obj_menu_ingame_placeholder);    
    instance_create(view_wview[0]/2, view_hview[0]/2 + 100, obj_mainMenu);
}

