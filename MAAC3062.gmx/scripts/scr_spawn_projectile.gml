/**
 * Spawns a projectile
 *
 * @param argument[0]
 *        The projectile object to spawn.
 *
 * @param argument[1]
 *        The x-axis spawn point.
 *
 * @param argument[2]
 *        The y-axis spawn point.
 *
 * @param argument[3]
 *        The target enemy.
 *
 * @param argument[4]
 *        Whether or not the projectile belongs to an enemy object.
 *
 * @param argument[5]
 *        The amount of damage the projectile can deal.
 */
 
var canSpawn = is_undefined(argument[0]) == false;
canSpawn &= is_undefined(argument[1]) == false;
canSpawn &= is_undefined(argument[2]) == false;
canSpawn &= is_undefined(argument[3]) == false;
canSpawn &= is_undefined(argument[4]) == false;
canSpawn &= is_undefined(argument[5]) == false;
canSpawn &= argument[0] != noone;
canSpawn &= argument[1] != noone;
canSpawn &= argument[2] != noone;
canSpawn &= argument[3] != noone;
canSpawn &= argument[4] != noone;
canSpawn &= argument[5] != noone;

if (canSpawn) {
    var projectile = instance_create(argument[1], argument[2], argument[0]);
    projectile.xDest = argument[3].x + (argument[3].sprite_width/2);
    projectile.yDest = argument[3].y + (argument[3].sprite_height/2);
    projectile.isEnemyProjectile = argument[4];
    projectile.damage = argument[5];
    projectile.targetObj = argument[3]; // In case object wants to follow (e.g. goat)
    // Return the object spawned in case more work needs to be done to it
    return projectile;
}

