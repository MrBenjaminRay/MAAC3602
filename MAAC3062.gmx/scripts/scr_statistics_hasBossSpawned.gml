/** @return Whether or not the boss for the current level has spawned before. */
var canProceed = scr_misc_isVariableInitialized(global.levelStats);

if (scr_misc_isVariableInitialized(global.levelStats)) {
    var levelData = ds_map_find_value(global.levelStats, room);
    return levelData[26];
}
