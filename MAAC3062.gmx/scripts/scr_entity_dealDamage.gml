/**
 * Subtracts the specified damage from the shields and health of the specified
 * entity.
 * If the entity reaches 0 health, then the entity is destroyed.
 *
 * @param argument[0]
 *        The entity taking damage.
 *
 * @param argument[1]
 *        The amount of damage being dealt.
 */
var canContinue = is_undefined(argument[0]) == false;
canContinue &= is_undefined(argument[1]) == false;

if (canContinue) {
    var newShield = 0;
    var newHealth = argument[0].currHealth;
    
    if (is_undefined(argument[0].currShield) == false) {
        newShield = argument[0].currShield;
    }
    
    if (argument[0].maxShield > 0) {
        newShield -= argument[1];
        
        if (newShield < 0) {
            newHealth += newShield;
            newShield = 0;
        }
        
        argument[0].currShield = newShield;
        argument[0].currHealth = newHealth;
    } else {
        newHealth -= argument[1];
    }
    
    if (newHealth <= 0) {
        // Destroy the instance
        with (argument[0]) {
            instance_destroy();
        }
    } else {
        argument[0].currShield = newShield;
        argument[0].currHealth = newHealth;

        if (argument[0].object_index == obj_miner) {
            // Set damage time remaining
            argument[0].damageAnimationRemaining = argument[0].damageAnimationLength;
        }

    }
}
