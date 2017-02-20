/**
 * Increases or decreases global fuel value by the specified amount.
 * Max fuel is 100.
 * This script is called in the obj_player X press event.
 *
 * @param argument[0]
 *        The amount by which to change the fuel (+ or -).
 */
 
 // Effects/animations
if (argument[0] > 0) {
    // Do something special when fuel increases
    
} else if (argument[0] < 0) {
    // Do something special when fuel decreases
    
} 

// Increase or decrease the fuel by the specified amount
global.fuel += argument[0];

