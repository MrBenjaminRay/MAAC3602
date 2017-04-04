/** 
 * Note:
 *      This should only be called from specific locations within the build state object.
 *
 * @return 
 *      Whether or not the current location is a valid placement location for the tower currently being placed.
 */

// Clamp the x position to the nearest multiple of 32:
var tempX = mouse_x - (mouse_x % 32);

// Clamp the y position to the nearest multiple of 32:
var tempY = mouse_y - (mouse_y % 32);

// Offset the tempY position to ensure the tower's aren't drawn floating above the ground:
tempY += 128 - sprite_get_height(towerSpr);


// Ensure there are no physics tiles within the area where the tower is to be placed:
var isLocationValid = collision_rectangle(tempX, tempY, tempX + sprite_get_width(towerSpr) - 1, tempY + sprite_get_height(towerSpr) - 1, obj_physicsTile, false, true) == noone;

// Ensure there are no other towers within the area where the tower is to be placed:
isLocationValid &= collision_rectangle(tempX, tempY, tempX + sprite_get_width(towerSpr) - 1, tempY + sprite_get_height(towerSpr) - 1, obj_tower, false, true) == noone;

// Ensure there are physics tiles beneath every part of the tower:
for (var i = tempX ; i < tempX + sprite_get_width(towerSpr) ; i += 32) {
    isLocationValid &= collision_rectangle(i, tempY + sprite_get_height(towerSpr), i + 32, tempY + sprite_get_height(towerSpr) + 16, obj_physicsTile, false, true) != noone;
}

// Ensure the location is within the tower's "build range" of the player:
var player = obj_player;

if (player != noone) {
    var distance = point_distance(player.x, player.y, tempX, tempY);
    var towerId = 0;
    
    switch (self.object_index) {
        case obj_tower_caterpillager: {
            towerId = 0;
            break;
        }
        case obj_tower_slothOnRope: {
            towerId = 1;
            break;
        }
        case obj_tower_tacticalTitmouse: {
            towerId = 2;
            break;
        }
        case obj_tower_109CaliBear: {
            towerId = 3;
            break;
        }
        case obj_tower_fireAnt: {
            towerId = 4;
            break;
        }
        case obj_tower_RT6100: {
            towerId = 5;
            break;
        }
    }
    
    isLocationValid &= distance <= global.towers[towerId, 7];
}

return isLocationValid;
