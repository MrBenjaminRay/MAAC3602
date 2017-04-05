

// Clamp the y position to the nearest multiple of 32:
var tempY;

if (y % 32 < 16) {
    tempY = y - (y % 32);
} else {
    tempY = y + (16 * ((y % 32)/32));
}



var totalTiles = 0;
var enoughSpace = false;

// Check how much space exists between the y position of the two levels of
// tiles below the entity. Two levels of tiles must be detected, and there must
// be enough room for the entity to fit between them vertically, otherwise we 
// can't allow the drop.
var tileY1 = -1; // The y position of the first level of tiles below the entity
var tileY2 = -1; // The y position of the second level of tiles below the entity

// Determine the total number of platforms below the entity and
// check if player would fit between the two first levels detected.
while (tempY < room_height) {
    // Increment y position by 1/2 of tile sprite height, as this will hit all of them
    tempY += sprite_get_height(spr_physicsTile)/2;
    // Check if there is a tile at this x/y position
    var inst = instance_position(x, tempY, obj_physicsTile);
    if (inst != noone) {
        // Tile detected.  Is it a new Y, or one we've already seen?
        if (tileY1 == -1) {
            // This is the first unqique tile y coordinate we've seen below the entity
            // Set the first variable
            tileY1 = inst.y;
        } else {
            // We've already detected a tile at an earlier y coordinate, but is it 
            // a new one y coordinate or is it the same one we've already seen?
            if (tileY1 != inst.y) {
                // This is the second y coordinate we have detected below the entity.
                // Set the second variable
                tileY2 = inst.y;
                // End the loop early so that the variables contain the current values
                break;
            }
        }
    }
}

// Whether we found two tile levels below the entity or we hit the height of the room,
// either way we can check if there is enough room for the player to fit between 
// the two tile levels.
// sprite_height already accounts for image_yscale, so no need to consider that.
if (tileY2 - tileY1 >= sprite_height) {
    return true;
} else {
    return false;
}

