// Run this here in case it is not checked in projectile step code that called this script
if (global.state == "Paused") {
    return 0;
}

// Update & enforce maximum drop life (if it is set)
if (maxLife > 0) {
    // Enforce maximum life
    if (life < maxLife) {
        life += global.deltaTime;
    } else {
        instance_destroy();
    }
}
