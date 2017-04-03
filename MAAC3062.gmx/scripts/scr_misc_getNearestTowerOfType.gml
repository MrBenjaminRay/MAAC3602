/*
 * Determines the nearest tower of the specified type.
 * If a max range is given, then the nearest tower within max range will be returned.
 * If no max range is given, then the nearest tower in the room will be returned.
 * If a min range is given, then the above will be true, only with a minimum distance to the nearest object.
 * If there is no "nearest tower" in either case, noone is returned.
 * If a tower is still warming up, it is not considered in the search.
 *
 * @param argument[0] 
 *        The maximum range.
 *
 * @param argument[1]
 *        The type of tower to find.
 *
 * @param argument[2]
 *        The minimum range. Optional.
 *
 * @return
 *        The nearest tower or noone if none exists.
 */
 
var nearestTower = noone;
var distance = 100000;
var minDistance = 0;

if (is_undefined(argument[1])) {
    argument[1] = obj_tower;
}

if (argument_count >= 3) {
    minDistance = argument[2];
}

for (i = 0 ; i < instance_number(argument[1]) ; i++) {
    var tmpTwr = instance_find(argument[1], i);
    
    var tmpDist = distance_to_object(tmpTwr);
    
    if (is_undefined(argument[0]) == false) {
        if (tmpTwr.warmUpRemaining == 0) {
            if (tmpDist <= argument[0] && tmpDist >= minDistance) {
                if (tmpDist < distance) {
                    nearestTower = tmpTwr;
                    distance = tmpDist;
                }
            }
        }
    } else {
        if (tmpTwr.warmUpRemaining == 0) {
            if (tmpDist < distance && tmpDist >= minDistance) {
                nearestTower = tmpTwr;
                distance = tmpDist;
            }
        }
    }
}

return nearestTower;
