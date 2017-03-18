/**
 * Changes the tower data stored by the Build control object to that of a new tower.
 *
 * @param argument[0]
 *        The ID of the tower, from the 'global.towers' array, that is being built.
 */

var canProceed = scr_misc_isVariableInitialized(argument[0]);

// Check if the tower has been unlocked:
if (scr_tower_checkUnlockByTowerIndex(argument[0]) == false) {
    scr_notification("You have not unlocked a " + global.towers[argument[0], 0] + ".", c_black, c_yellow);
    return 0;
}

// Check if Energy Requirements Met:
if (global.energy < global.towers[argument[0], 1] * global.towerUpgradeLevel[argument[0]]) {
    scr_notification("You don't have enough energy to build a " + global.towers[argument[0], 0] + ".", c_black, c_yellow);
    return 0;
}
 
if (canProceed) {
    towerIndex = argument[0];
    tower = global.towers[argument[0], 0];
    towerCost = global.towers[argument[0], 1] * global.towerUpgradeLevel[argument[0]];
    towerObj = global.towers[argument[0], 2];
    towerSpr = global.towers[argument[0], 3];
    towerRange = global.towers[argument[0], 4] * global.towerUpgradeLevel[argument[0]];
    towerWeaponXOffset = global.towers[argument[0], 5];
    towerWeaponYOffset = global.towers[argument[0], 6];
    towerPlacementDistance = global.towers[argument[0], 8];
    towerPlacementInfo = global.towers[argument[0], 9];
}

