/**
 * Creates the specified projectile at the specified location and sets it's destination 
 * to the specified destination.
 *
 * @param argument[0]
 *        The type of the projectile.
 *
 * @param argument[1]
 *        The x-axis spawn location coordinate.
 *
 * @param argument[2]
 *        The y-axis spawn location coordinate.
 *
 * @param argument[3]
 *        The destination x-axis coordinate.
 *
 * @param argument[4]
 *        The destination y-axis coordinate.
 *
 * @return
 *        The created projectile or noone if none was created.
 */
 
if (is_undefined(argument[0])) {
    return noone;
}

if (is_undefined(argument[1])) {
    return noone;
}
 
if (is_undefined(argument[2])) {
    return noone;
}

if (is_undefined(argument[3])) {
    return noone;
}
 
if (is_undefined(argument[4])) {
    return noone;
}

var projectile = instance_create(argument[1], argument[2], argument[0]);
projectile.xDest = argument[3];
projectile.yDest = argument[4];
return projectile;
