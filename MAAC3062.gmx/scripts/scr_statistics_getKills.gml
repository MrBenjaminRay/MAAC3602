/** @return The total number of enemies killed on the level. */
var canProceed = scr_misc_isVariableInitialized(global.levelStats);
canProceed &= is_real(global.levelStats);

if (canProceed) {
    var levelData = ds_map_find_value(global.levelStats, room);
    return levelData[28];
}
