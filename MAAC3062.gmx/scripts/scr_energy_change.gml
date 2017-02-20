/**
 * Increases or decreases global energy value by the specified amount.
 * We use a script so that energy can be changed in various places in code,
 * and we can add effects or animations as needed in a single location (here).
 *
 * @param argument[0]
 *        The amount by which to change the energy (+ or -).
 */

// Effects/animations
if (argument[0] > 0) {
    // Do something special when energy increases
    
} else if (argument[0] < 0) {
    // Do something special when energy decreases
    
} 

// Increase or decrease the energy by the specified amount
global.energy += argument[0];

// Every time new energy is added, boost energy icon image size
// (it automatically decreases)
with (obj_level_energy) {
    scale = scaleLevelBoosted;
}

