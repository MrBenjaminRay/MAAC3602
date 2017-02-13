/*
 * Determines the nearest tower.
 * If a range is given, then the nearest tower within range will be returned.
 * If no range is given, then the nearest tower in the room will be returned.
 * If there is no "nearest tower" in either case, noone is returned.
 *
 * @param argument[0] 
 *        The range
 *
 * @return
 *        The nearest tower or noone if none exists.
 */
var nearestTower = noone;
var distance = 100000;

for (i = 0 ; i < instance_number(obj_tower) ; i++) {
    var tmpTower = instance_find(obj_tower, i);
    
    var tmpDist = distance_to_object(tmpTower);
    
    if (is_undefined(argument[0]) == false) {
        if (tmpDist <= argument[0]) {
            if (tmpDist < distance) {
                nearestTower = tmpTower;
                distance = tmpDist;
            }
        }
    } else {
        if (tmpDist < distance) {
            nearestTower = tmpTower;
            distance = tmpDist;
        }
    }
}

return nearestTower;
