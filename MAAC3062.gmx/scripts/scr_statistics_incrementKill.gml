/**
 * Increments the kill-counter of the current level for the specified enemy.
 *
 * @param argument[0]
 *        The enemy object that was killed (destroyed).
 */

var canProceed = scr_misc_isVariableInitialized(global.levelStats);
canProceed &= scr_misc_isVariableInitialized(argument[0]);

if (canProceed) {
    var levelData = ds_map_find_value(global.levelStats, room);

    switch (argument[0]) {
        case obj_enemy_ground_light: {
            levelData[11]++;
            break;
        }
        case obj_enemy_ground_medium: {
            levelData[12]++;
            break;
        }
        case obj_enemy_ground_heavy: {
            levelData[13]++;
            break;
        }
        case obj_enemy_ground_jackal: {
            levelData[14]++;
            break;
        }
        case obj_enemy_ground_spider_small: {
            levelData[15]++;
            break;
        }
        case obj_enemy_ground_spider_large: {
            levelData[16]++;
            break;
        }
        case obj_enemy_air_light: {
            levelData[9]++;
            break;
        }
        case obj_enemy_air_heavy: {
            levelData[10]++;
            break;
        }
    }
}
