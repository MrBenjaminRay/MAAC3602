/**
 * Spawns the specified object at the specified coordinates after disabling all
 * spawner objects.
 *
 * @param argument[0]
 *        The boss object to spawn.
 *
 * @param argument[1]
 *        The x-axis coordinate of where the boss should be spawned.
 *
 * @param argument[2]
 *        The y-axis coordinate of where the boss should be spawned.
 *
 * @return
 *        The spawned object.
 */

// Disable all Spawners:
with (obj_spawner) {
    canSpawn = false;
}

// Spawn the Object:
var obj = instance_create(argument[1], argument[2], argument[0]);
return obj;

