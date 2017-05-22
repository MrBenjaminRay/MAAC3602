/**
 * Creates a particle of energy that flies from HUD energy item to x/y position.
 *
 * @param argument[0]
 *        x coordinate of destination
 *
 * @param argument[1]
 *        y coordinate of destination
 *
 */

if (instance_exists(obj_hud_levelEnergy)) {
    var sourceX = obj_hud_levelEnergy.collectionPointX;
    var sourceY = obj_hud_levelEnergy.collectionPointY;
    scr_energy_transfer(sourceX, sourceY, argument[0], argument[1]);
}

