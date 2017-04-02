// Force random randoms
randomize();

// Initialize stats object for level
scr_statistics_initializeLevel();

// Set minerals
global.initialMinerals = global.minerals;

// Spawn Required Objects:
instance_create(-50, -50, obj_control_bosses);
instance_create(-50, -50, obj_hud_levelEnergy);
instance_create(-50, -50, obj_hud_minersAlive);
//instance_create(-50, -50, obj_hud_levelMinerals);
//instance_create(-50, -50, obj_hud_levelKills);
//instance_create(-50, -50, obj_hud_bossObject);
instance_create(-50, -50, obj_camera);
instance_create(-50, -50, obj_hud_hotbar);
instance_create(-50, -50, obj_control_normalState);

// Spawn ability orbs on all levels except tutorial and moon (1st ability unlocked when moon beaten)
if (room != rm_tut1 && room != rm_level_moon) {
    instance_create(-50, -50, obj_hud_abilityorb_1);
    instance_create(-50, -50, obj_hud_abilityorb_2);
    instance_create(-50, -50, obj_hud_abilityorb_3);
    instance_create(-50, -50, obj_hud_abilityorb_4);
}

// Add appropriate level control object
switch (room) {
    case rm_tut1:
        instance_create(-50, -50, obj_levelControl_Tutorial1);
        break;
    case rm_level_moon: 
        instance_create(-50, -50, obj_levelControl_1);
        break;
    case rm_level_forest: 
        instance_create(-50, -50, obj_levelControl_2);
        break;
    case rm_level_desert: 
        instance_create(-50, -50, obj_levelControl_3);
        break;
    case rm_level_ice: 
        instance_create(-50, -50, obj_levelControl_4);
        break;
    case rm_level_underwater: 
        instance_create(-50, -50, obj_levelControl_5);
        break;
    case rm_level_asteroid: 
        instance_create(-50, -50, obj_levelControl_6);
        break;
    case rm_level_mars: 
        instance_create(-50, -50, obj_levelControl_7);
        break;
    case rm_level_earth: 
        instance_create(-50, -50, obj_levelControl_8);
        break;
}

// Hide windows cursor
window_set_cursor(cr_none);

// Set completion/failure variables
global.currentLevelComplete = 0;
global.currentLevelFailed = 0;

