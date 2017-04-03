/*
 * Determines the nearest object of the specified type.
 * If a max range is given, then the nearest object within max range will be returned.
 * If no max range is given, then the nearest object in the room will be returned.
 * If a min range is given, then the above will be true, only with a minimum distance to the nearest object.
 * If there is no "nearest object" in either case, noone is returned.
 *
 * @param argument[0] 
 *        The maximum range.
 *
 * @param argument[1]
 *        The type of object to find.
 *
 * @param argument[2]
 *        The minimum range. Optional.
 *
 * @return
 *        The nearest object or noone if none exists.
 */
var nearestEnemy = noone;
var distance = 100000;
var minDistance = 0;

if (is_undefined(argument[1])) {
    argument[1] = obj_enemy;
}

if (argument_count >= 3) {
    minDistance = argument[2];
}

// Special case for towers:
switch (argument[1]) {
    case obj_tower:
    case obj_tower_caterpillager:
    case obj_tower_slothOnRope:
    case obj_tower_tacticalTitmouse:
    case obj_tower_109CaliBear:
    case obj_tower_fireAnt:
    case obj_tower_RT6100:
    case obj_tower_mechaGoat: {
        if (argument_count >= 3) {
            return scr_misc_getNearestTowerOfType(argument[0], argument[1], argument[2]);
        } else {
            return scr_misc_getNearestTowerOfType(argument[0], argument[1]);
        }
        break;
    }
}
// End special case for towers.

for (i = 0 ; i < instance_number(argument[1]) ; i++) {
    var tmpEnem = instance_find(argument[1], i);
    
    var tmpDist = distance_to_object(tmpEnem);
    
    if (is_undefined(argument[0]) == false) {
        if (tmpDist <= argument[0] && tmpDist >= minDistance) {
            if (tmpDist < distance) {
                nearestEnemy = tmpEnem;
                distance = tmpDist;
            }
        }
    } else {
        if (tmpDist < distance && tmpDist >= minDistance) {
            nearestEnemy = tmpEnem;
            distance = tmpDist;
        }
    }
}

return nearestEnemy;

