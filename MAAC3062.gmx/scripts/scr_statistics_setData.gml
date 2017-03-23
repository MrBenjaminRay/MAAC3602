/**
 * Sets the level data value, for the current level, in the
 * specified index to the specified value.
 *
 * @param argument[0]
 *        The index of the level data value to retrieve.
 *
 * @param argument[1]
 *        The new value.
 */
 
// Check if the levelStats map and the argument are initalized:
var canProceed = scr_misc_isVariableInitialized(global.levelStats);
canProceed &= scr_misc_isVariableInitialized(argument[0]);
canProceed &= scr_misc_isVariableInitialized(argument[1]);

if (canProceed == false) {
    return 0;
}

// Check if the argument is a numerical value:
canProceed &= is_real(argument[0]);

if (canProceed == false) {
    return 0;
}

// Check if the argument is non-negative:
canProceed &= argument[0] >= 0;

if (canProceed == false) {
    return 0;
}

// Set the data:
var levelData = ds_map_find_value(global.levelStats, room);

if (argument[0] <= array_length_1d(levelData)) {
    levelData[argument[0]] = argument[1];
    ds_map_replace(global.levelStats, room, levelData);
}
