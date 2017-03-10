/**
 * Changes the tower data stored by the Build control object to that of a new tower.
 *
 * @param argument[0]
 *        The ID of the tower, from the 'global.towers' array, that is being built.
 */

var canProceed = is_undefined(argument[0]) == false;
 
if (canProceed) {
    tower = global.towers[argument[0], 0];
    towerCost = global.towers[argument[0], 1] * global.towerUpgradeLevel[argument[0]];
    towerObj = global.towers[argument[0], 2];
    towerSpr = global.towers[argument[0], 3];
    towerRange = global.towers[argument[0], 4] * global.towerUpgradeLevel[argument[0]];
    towerWeaponXOffset = global.towers[argument[0], 5];
    towerWeaponYOffset = global.towers[argument[0], 6];
    towerPlacementDistance = global.towers[argument[0], 8];
}
