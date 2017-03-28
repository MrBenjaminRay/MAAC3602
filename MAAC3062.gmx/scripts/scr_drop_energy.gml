/**
 * Creates energy drops to match total amount of energy to drop.
 * Max energy per drop configured below.
 * Total energy to drop specified in argument.
 * If energy to drop exceeds max energy per drop, multiple drops
 * will be created.
 * For consistency, we should only be dropping energy in increments
 * of maxEnergyPerDrop (e.g. 50) so that the player always gets the
 * same amount of energy for each drop they pick up.
 *
 * @param argument[0]
 *        The x coordinate of the position from which the drop should appear.
 * @param argument[1]
 *        The y coordinate of the position from which the drop should appear.
 * @param argument[2] 
 *        The total amount of energy to be dropped.
 */
 
// Maximum # of energy to store in a drop.
var maxEnergyPerDrop = 50;
var sourceX = argument[0];
var sourceY = argument[1];
var toDispense = argument[2];

// Show warning when energy drop total is not multiple of maxEnergyPerDrop.
// We don't want all drops to be 50 except one weird one that is lower.
if (argument[0] mod maxEnergyPerDrop > 0) {
    //show_debug_message("WARNING: Energy drop (" + string(toDispense) + " not multiple of " + string(maxEnergyPerDrop) + ". Should be multiple so that each drop is of consistent worth.");
}

while (toDispense > 0) {
    var inst = instance_create(sourceX, sourceY, obj_drop_energy);
    if (toDispense >= maxEnergyPerDrop) {
        // Assign regular worth to this energy drop
        inst.value = maxEnergyPerDrop;
    } else {
        // Assign partial worth to this energy drop (not ideal, but do it anyway)
        inst.value = toDispense;
    }
    toDispense -= inst.value;
    
    with inst {
        speed = .3;
        direction = random_range(45, 135);
    }

}

