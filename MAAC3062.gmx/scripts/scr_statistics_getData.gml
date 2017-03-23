/**
 * Retrieves the level data value, for the current level, from the
 * specified index.
 *
 * @param argument[0]
 *        The index of the level data value to retrieve.
 *
 * @return
 *        The retrieved data or noone if the index is invalid.
 */
 
// Check if the levelStats map and the argument are initalized:
var canProceed = scr_misc_isVariableInitialized(global.levelStats);
canProceed &= scr_misc_isVariableInitialized(argument[0]);

if (canProceed == false) {
    return noone;
}

// Check if the argument is a numerical value:
canProceed &= is_real(argument[0]);

if (canProceed == false) {
    return noone;
}

// Check if the argument is non-negative:
canProceed &= argument[0] >= 0;

if (canProceed == false) {
    return noone;
}

// Retrieve the data:
var levelData = ds_map_find_value(global.levelStats, room);

if (argument[0] <= array_length_1d(levelData)) {
    return levelData[argument[0]];
}
