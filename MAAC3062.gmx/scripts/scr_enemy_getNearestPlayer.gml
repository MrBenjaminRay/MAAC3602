/*
 * Determines the nearest player.
 * If a range is given, then the nearest player within range will be returned.
 * If no range is given, then the nearest player in the room will be returned.
 * If there is no "nearest player" in either case, noone is returned.
 *
 * @param argument[0] 
 *        The range
 *
 * @return
 *        The nearest player or noone if none exists.
 */
var nearestPlayer = noone;
var distance = 100000;

for (i = 0 ; i < instance_number(obj_player) ; i++) {
    var tmpPlayer = instance_find(obj_player, i);
    
    var tmpDist = distance_to_object(tmpPlayer);
    
    if (is_undefined(argument[0]) == false) {
        if (tmpDist <= argument[0]) {
            if (tmpDist < distance) {
                nearestPlayer = tmpPlayer;
                distance = tmpDist;
            }
        }
    } else {
        if (tmpDist < distance) {
            nearestPlayer = tmpPlayer;
            distance = tmpDist;
        }
    }
}

return nearestPlayer;
