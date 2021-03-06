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
    
    // Weapon Data:    (include goat tower, as it uses weapon offset to spawn goat, even though non weapon object created)
    weaponXOffset = global.towers[argument[0], 5]
    weaponYOffset = global.towers[argument[0], 6];
    
    // Create Object:   (for every weapon except goat tower)
    if (object_index != obj_tower_mechaGoat) {
        weaponObj = instance_create(x + weaponXOffset, y + weaponYOffset, global.towers[argument[0], 14]);    
            
        weaponObj.x = x + weaponXOffset;
        weaponObj.y = y + weaponYOffset;
        
        // Set reference to parent tower
        weaponObj.parentTower = id;
    }
        
    // Health & Shield Data:
    currHealth = global.towers[argument[0], 12];
    currShield = global.towers[argument[0], 13];
    
    maxHealth = global.towers[argument[0], 12];
    maxShield = global.towers[argument[0], 13];
    
    // Tower warmup
    warmUpTotal = global.towers[argument[0], 15];
    warmUpRemaining = warmUpTotal;
    warmUpYOffset = 0; // UPDATE THIS
    warmUpState = 0; // Two stages, 1 where tower is built, 1 where cannon is mounted
    originalY = y; // Capture current Y so we can reset it after tower warmup growth complete

}
