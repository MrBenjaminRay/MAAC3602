/**
 * Gets the level data array for the current level.
 *
 */

var canProceed = scr_misc_isVariableInitialized(global.levelStats);

if (canProceed) {
    var levelData = ds_map_find_value(global.levelStats, room);
    return levelData;
} else {
    show_debug_message("UNABLE TO GET CURRENT LEVEL STATS OBJECT FOR CURRENT ROOM.");
}
