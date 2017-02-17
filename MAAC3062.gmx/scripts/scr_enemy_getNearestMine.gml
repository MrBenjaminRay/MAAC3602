/*
 * Determines the nearest mine.
 * If a range is given, then the nearest mine within range will be returned.
 * If no range is given, then the nearest mine in the room will be returned.
 * If there is no "nearest mine" in either case, noone is returned.
 *
 * @param argument[0] 
 *        The range
 *
 * @return
 *        The nearest mine or noone if none exists.
 */
var nearestMine = noone;
var distance = 100000;

for (i = 0 ; i < instance_number(obj_mine) ; i++) {
    var tmpMine = instance_find(obj_mine, i);
    
    var tmpDist = distance_to_object(tmpMine);
    
    if (is_undefined(argument[0]) == false) {
        if (tmpDist <= argument[0]) {
            if (tmpDist < distance) {
                nearestMine = tmpMine;
                distance = tmpDist;
            }
        }
    } else {
        if (tmpDist < distance) {
            nearestMine = tmpMine;
            distance = tmpDist;
        }
    }
}

return nearestMine;
