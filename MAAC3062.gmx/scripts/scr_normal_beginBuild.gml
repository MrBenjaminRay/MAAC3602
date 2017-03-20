/**
 * Clears any existing control objects.
 * Creates a new control object for the Build state and sets all of the initial tower
 * data based on the specified index.
 * Sets the state to the Build state.
 *
 * @param argument[0]
 *        The ID of the tower, from the 'global.towers' array, that is being built.
 */

var canProceed = scr_misc_isVariableInitialized(argument[0]);

if (instance_number(obj_tower_RT6100) == 1) {
    canProceed &= obj_tower_RT6100.mounted == false;
}

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
    scr_state_clearControlObjects();
    
    var buildCont = instance_create(x, y, obj_control_buildState);
    buildCont.towerIndex = argument[0];
    buildCont.tower = global.towers[argument[0], 0];
    buildCont.towerCost = global.towers[argument[0], 1] * global.towerUpgradeLevel[argument[0]];
    buildCont.towerObj = global.towers[argument[0], 2];
    buildCont.towerSpr = global.towers[argument[0], 3];
    buildCont.towerRange = global.towers[argument[0], 4] * global.towerUpgradeLevel[argument[0]];
    buildCont.towerWeaponXOffset = global.towers[argument[0], 5];
    buildCont.towerWeaponYOffset = global.towers[argument[0], 6];
    buildCont.towerPlacementDistance = global.towers[argument[0], 8];
    buildCont.towerPlacementInfo = global.towers[argument[0], 9];
    
    scr_state_setBuild();
}

