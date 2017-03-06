/*
 * Determines the nearest non-frozen enemy.
 * If a range is given, then the nearest non-frozen enemy within range will be returned.
 * If no range is given, then the nearest non-frozen enemy in the room will be returned.
 * If there is no "nearest non-frozen enemy" in either case, noone is returned.
 *
 * @param argument[0] 
 *        The range.
 *
 * @param argument[1]
 *        The type of object to find.
 *
 * @return
 *        The nearest non-frozen enemy or noone if none exists.
 */
var nearestEnemy = noone;
var distance = 100000;

if (is_undefined(argument[1])) {
    argument[1] = obj_enemy;
}

for (var i = 0 ; i < instance_number(obj_enemy) ; i++) {
    var tmpEnem = instance_find(obj_enemy, i);
    
    var tmpDist = distance_to_object(tmpEnem);
    
    if (tmpEnem.isFrozen == false) {
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
}

return nearestEnemy;
