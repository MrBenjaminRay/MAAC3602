/*
 *  Returns true when the object passed is a boss, false otherwise
 *
 */

if (instance_exists(argument[0]) && 
    argument[0].object_index == obj_enemy_boss_large_A ||
    argument[0].object_index == obj_enemy_boss_large_B ||
    argument[0].object_index == obj_enemy_boss_large_C ||
    argument[0].object_index == obj_enemy_boss_large_D ||
    argument[0].object_index == obj_enemy_boss_moon  ||
    argument[0].object_index == obj_enemy_boss_mini_B  ||
    argument[0].object_index == obj_enemy_boss_mini_C  ||
    argument[0].object_index == obj_enemy_boss_mini_D) {
    return true;
} else {
    return false;
}

