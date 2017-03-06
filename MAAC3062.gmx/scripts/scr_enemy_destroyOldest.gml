/*
 *  This script finds the oldest enemy and destroys it.
 *  Will usually be called when new enemy spawning and enemy cap exceeded.
 */

var oldest = 0;
var oldestInst = noone;

for (var i=0; i<instance_number(obj_enemy); i++) {
    var e = instance_find(obj_enemy, i);
    if (e.age > oldest) {
        oldest = e.age;
        oldestInst = e;
    }
}

if (oldest > 0) {
    with (oldestInst) {
        // Don't drop energy as this is being despawned due to lag prevention,
        // not due to a victory on the part of the player
        energyDrop = 0;
        instance_destroy();
    }
}

