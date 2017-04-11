/*
 * Selects a target for the goat. When an argument is specified, we try to
 * get an object other than the one provided (it is probably already targeted
 * by a goat from the same tower).
 *
 * @param argument[0]
 *        The minimum range. Optional.
 *
 */

// Goat target priority
enemyTypePriority[0] = obj_enemy_boss_large_A;
enemyTypePriority[1] = obj_enemy_boss_large_B;
enemyTypePriority[2] = obj_enemy_boss_large_C;
enemyTypePriority[3] = obj_enemy_boss_large_D;
enemyTypePriority[4] = obj_enemy_boss_moon;
enemyTypePriority[5] = obj_enemy_boss_mini_B;
enemyTypePriority[6] = obj_enemy_boss_mini_C;
enemyTypePriority[7] = obj_enemy_boss_mini_D;
enemyTypePriority[8] = obj_enemy_ground_spider_large;
enemyTypePriority[9] = obj_enemy_ground_jackal;
enemyTypePriority[10] = obj_enemy_ground_heavy;
enemyTypePriority[11] = obj_enemy_air_heavy;
enemyTypePriority[12] = obj_enemy_ground_medium;
enemyTypePriority[13] = obj_enemy_air_light;
enemyTypePriority[14] = obj_enemy_ground_spider_small;
enemyTypePriority[15] = obj_enemy_ground_light;
enemyTypePriority[16] = obj_enemy_ground;    // In case a ground type was not explicitly mentioned above
enemyTypePriority[17] = obj_enemy_air;       // In case a ground type was not explicitly mentioned above
enemyTypePriority[18] = obj_enemy;           // In case a ground type was not explicitly mentioned above

var otherThan = noone;

if (argument_count == 1) {
    otherThan = argument[0];
}

for (var i = 0; i < array_length_1d(enemyTypePriority); i++) {
    nearestEnemy = scr_misc_gearNearestObjectOfType(attackRange, enemyTypePriority[i]);
    if (nearestEnemy != noone) {
        break;
    }
}

return nearestEnemy;

