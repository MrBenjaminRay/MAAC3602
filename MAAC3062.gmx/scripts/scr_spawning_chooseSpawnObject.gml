/**
 * Randomly chooses an object to spawn based on the objects that are allowed to spawn.
 * Assumes that there is at-least one object allowed for spawning.
 *
 * Note:
 *      This should only be called by obj_spawnerSpawner.
 *
 * @return
 *      The object to spawn.
 */

// NOTE: Should only be called by obj_spawner.
var spawnableObjects = ds_list_create();

// Insert all spawnable objects into the list:
if (canSpawn_groundLight) {
    ds_list_add(spawnableObjects, obj_enemy_ground_light);
}

if (canSpawn_groundMedium) {
    ds_list_add(spawnableObjects, obj_enemy_ground_medium);
}

if (canSpawn_groundHeavy) {
    ds_list_add(spawnableObjects, obj_enemy_ground_heavy);
}

if (canSpawn_groundJackal) {
    ds_list_add(spawnableObjects, obj_enemy_ground_jackal);
}

if (canSpawn_groundSpiderSmall) {
    ds_list_add(spawnableObjects, obj_enemy_ground_spider_small);
}

if (canSpawn_groundSpiderLarge) {
    ds_list_add(spawnableObjects, obj_enemy_ground_spider_large);
}

if (canSpawn_airLight) {
    ds_list_add(spawnableObjects, obj_enemy_air_light);
}

if (canSpawn_airHeavy) {
    ds_list_add(spawnableObjects, obj_enemy_air_heavy);
}

// Randomly choose an object from the list and return it:
var listSize = ds_list_size(spawnableObjects);
var tmp = ds_list_find_value(spawnableObjects, irandom_range(0, listSize - 1));
//show_debug_message(tmp);
return tmp;
