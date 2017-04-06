/**
 * Creates a particle of energy that flies from x/y position to HUD energy item.
 *
 * @param argument[0]
 *        x coordinate of source
 *
 * @param argument[1]
 *        y coordinate of source
 *
 */

if (instance_exists(obj_hud_levelEnergy)) {
    var destX = obj_hud_levelEnergy.collectionPointX;
    var destY = obj_hud_levelEnergy.collectionPointY;
    scr_energy_transfer(argument[0], argument[1], destX, destY);
}

