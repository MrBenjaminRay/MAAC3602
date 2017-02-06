/*
 * Determines the nearest enemy.
 * If a range is given, then the nearest enemy within range will be returned.
 * If no range is given, then the nearest enemy in the room will be returned.
 * If there is no "nearest enemy" in either case, noone is returned.
 *
 * @param argument[0] 
 *        The range
 *
 * @return
 *        The nearest enemy or noone if none exists.
 */
var nearestEnemy = noone;
var distance = 100000;

for (i = 0 ; i < instance_number(obj_enemy) ; i++) {
    var tmpEnem = instance_find(obj_enemy, i);
    
    var tmpDist = distance_to_object(tmpEnem);
    
    if (is_undefined(argument[0]) == false) {
        if (tmpDist <= argument[0]) {
            if (tmpDist < distance) {
                nearestEnemy = tmpEnem;
                distance = tmpDist;
            }
        }
    } else {
        if (tmpDist < distance) {
            nearestEnemy = tmpEnem;
            distance = tmpDist;
        }
    }
}

return nearestEnemy;
