/*
 * Determines the nearest miner.
 * If a range is given, then the nearest miner within range will be returned.
 * If no range is given, then the nearest miner in the room will be returned.
 * If there is no "nearest miner" in either case, noone is returned.
 *
 * @param argument[0] 
 *        The range
 *
 * @return
 *        The nearest miner or noone if none exists.
 */
var nearestMiner = noone;
var distance = 100000;

for (i = 0 ; i < instance_number(obj_miner) ; i++) {
    var tmpMiner = instance_find(obj_miner, i);
    
    var tmpDist = distance_to_object(tmpMiner);
    
    if (is_undefined(argument[0]) == false) {
        if (tmpDist <= argument[0]) {
            if (tmpDist < distance) {
                nearestMiner = tmpMiner;
                distance = tmpDist;
            }
        }
    } else {
        if (tmpDist < distance) {
            nearestMiner = tmpMiner;
            distance = tmpDist;
        }
    }
}

return nearestMiner;
