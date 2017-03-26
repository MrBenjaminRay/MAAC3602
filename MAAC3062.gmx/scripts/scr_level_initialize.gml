// Initialize stats object for level
scr_statistics_initializeLevel();

// Set minerals
global.initialMinerals = global.minerals;

// Spawn Required Control Objects:
instance_create(-50, -50, obj_control_bosses);

// Hide windows cursor
window_set_cursor(cr_none);

// Set completion/failure variables
global.currentLevelComplete = 0;
global.currentLevelFailed = 0;

