// Clamp the y position to the nearest multiple of 32:
var tempY;

if (y % 32 < 16) {
    tempY = y - (y % 32);
} else {
    tempY = y + (16 * ((y % 32)/32));
}


// Determine the total number of platforms below the entity:
var totalTiles = 0;

// TODO:  Get a reference to all tiles below the entity so that we can
// check if there is enough room for this entity immediately below
// the first tile below him.
var tiles;



while (tempY < room_height) {
    tempY += sprite_height;
    
    if (place_meeting(x, tempY, obj_physicsTile)) {
        totalTiles++;
    }
}

return totalTiles > 1;
