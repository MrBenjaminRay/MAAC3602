/** 
 * Sets whether or not the boss has spawned.
 *
 * @param argument[0]
 *        Whether or not the boss has spawned.
 */
var canProceed = scr_misc_isVariableInitialized(global.levelStats);
canProceed &= scr_misc_isVariableInitialized(argument[0]);
canProceed &= is_real(global.levelStats);

if (canProceed) {
    var levelData = ds_map_find_value(global.levelStats, room);
    levelData[26] = argument[0];
}
