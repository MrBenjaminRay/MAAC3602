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

    switch (argument[0].object_index) {
        case obj_enemy_ground_light: {
            levelData[11]++;
            levelData[28]++;
            scr_kills_change(1);  // Trigger visual cue when kill count changes
            //show_debug_message('Ground light enemies killed: ' + string(levelData[11])); // DEBUG
            break;
        }
        case obj_enemy_ground_medium: {
            levelData[12]++;
            levelData[28]++;
            scr_kills_change(1);  // Trigger visual cue when kill count changes
            break;
        }
        case obj_enemy_ground_heavy: {
            levelData[13]++;
            levelData[28]++;
            scr_kills_change(1);  // Trigger visual cue when kill count changes
            break;
        }
        case obj_enemy_ground_jackal: {
            levelData[14]++;
            levelData[28]++;
            scr_kills_change(1);  // Trigger visual cue when kill count changes
            break;
        }
        case obj_enemy_ground_spider_small: {
            levelData[15]++;
            
            // Baby spiders are not counted towards total kills.
            //levelData[28]++;
            //scr_kills_change(1);  // Trigger visual cue when kill count changes
            break;
        }
        case obj_enemy_ground_spider_large: {
            levelData[16]++;
            levelData[28]++;
            scr_kills_change(1);  // Trigger visual cue when kill count changes
            break;
        }
        case obj_enemy_air_light: {
            levelData[9]++;
            levelData[28]++;
            scr_kills_change(1);  // Trigger visual cue when kill count changes
            break;
        }
        case obj_enemy_air_heavy: {
            levelData[10]++;
            levelData[28]++;
            scr_kills_change(1);  // Trigger visual cue when kill count changes
            break;
        }
    }
    
    ds_map_replace(global.levelStats, room, levelData);
}
