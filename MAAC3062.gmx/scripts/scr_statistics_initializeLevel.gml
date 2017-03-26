/**
 * Initializes the level data array for the current level. If argument
 * provided, and it is a room, initializes the level data for that room
 * instead of the current one.  (This is necessary for when you use cheat
 * code to skip level 1 and go straight to hub, where it is expected that
 * level 1 would be completed first.)
 *
 * @param argument[0]
 *        OPTIONAL: Room for which data should be initialized.
 *
 */

var roomToInitialize;
if (argument_count == 1) {
    // Parameter provided, so override room variable and use provided room
    roomToInitialize = argument[0];
} else {
    // No parameter provided, so use current room
    roomToInitialize = room;
}
 
// Check if the levelStats map is already initialized for the level
var canProceed = scr_misc_isVariableInitialized(global.levelStats);
canProceed &= ds_map_exists(global.levelStats, roomToInitialize) == false;

if (canProceed == false) {
    return 0;
}

if (canProceed) {
    var roomData;
    roomData[0] = room_get_name(roomToInitialize);
    roomData[1] = "Air - Light";
    roomData[2] = "Air - Heavy";
    roomData[3] = "Ground - Light";
    roomData[4] = "Ground - Medium";
    roomData[5] = "Ground - Heavy";
    roomData[6] = "Ground - Jackal";
    roomData[7] = "Ground - Small Spider";
    roomData[8] = "Ground - Large Spider";
    roomData[9] = 0;   // Air - Light Spawns
    roomData[10] = 0;  // Air - Heavy Spawns
    roomData[11] = 0;  // Ground - Light Spawns
    roomData[12] = 0;  // Ground - Medium Spawns
    roomData[13] = 0;  // Ground - Heavy Spawns
    roomData[14] = 0;  // Ground - Jackal Spawns
    roomData[15] = 0;  // Ground - Small Spider Spawns
    roomData[16] = 0;  // Ground - Large Spider Spawns
    roomData[17] = 0;  // Air - Light Kills
    roomData[18] = 0;  // Air - Heavy Kills
    roomData[19] = 0;  // Ground - Light Kills
    roomData[20] = 0;  // Ground - Medium Kills
    roomData[21] = 0;  // Ground - Heavy Kills
    roomData[22] = 0;  // Ground - Jackal Kills
    roomData[23] = 0;  // Ground - Small Spider Kills
    roomData[24] = 0;  // Ground - Large Spider Kills
    roomData[25] = 0;  // Total Enemies Spawned
    roomData[26] = false;  // Level Boss Spawned
    roomData[27] = false;  // Level Boss Material Obtained
    roomData[28] = 0;  // Total Enemies Killed
    roomData[29] = 0;  // Minerals Earned
    ds_map_add(global.levelStats, roomToInitialize, roomData);
}
