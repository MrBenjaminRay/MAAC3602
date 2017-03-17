/**
 * Loads and sets all required tower data based on the specified ID.
 *
 * @param argument[0]
 *        The ID of the tower data to load.
 */

var canProceed = scr_misc_isVariableInitialized(argument[0]);

if (canProceed) {
    // Attack Data:
    attackRate = global.towers[argument[0], 10];
    attackRateCounter = 0;
    attackDamage = global.towers[argument[0], 11] * global.towerUpgradeLevel[argument[0]];
    attackRange = global.towers[argument[0], 4] * global.towerUpgradeLevel[argument[0]];
    
    // Weapon Data:
    weaponXOffset = global.towers[argument[0], 5]
    weaponYOffset = global.towers[argument[0], 6];
    weaponObj = instance_create(x + weaponXOffset, y + weaponYOffset, global.towers[argument[0], 13]);
    
    weaponObj.x = x + weaponXOffset;
    weaponObj.y = y + weaponYOffset;

    // Set reference to parent tower
    weaponObj.parentTower = id;
        
    // Health & Shield Data:
    currHealth = global.towers[argument[0], 12];
    currShield = global.towers[argument[0], 13];
    
    maxHealth = global.towers[argument[0], 12];
    maxShield = global.towers[argument[0], 13];

}
