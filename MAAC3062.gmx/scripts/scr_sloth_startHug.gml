mode = "HUG";
if (instance_exists(targetEnemy)) {
    // Hug the enemy to slow it down
    // For now do a full instant freeze, but later
    // let the freeze build up
    
    //targetEnemy.freezeMultiplier = 15;
    //targetEnemy.frozenTime = 1000;
} else {
    show_debug_message("Target does not exist.");
}
