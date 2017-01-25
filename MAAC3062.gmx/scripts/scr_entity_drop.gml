// Determine total number of platforms below the entity:
var tempY = (y - (y % 32)); // Clamp the y position to the nearest multiple of 32.
var totalTiles = 0;


while (tempY < room_height) {
    tempY += sprite_height;
    
    if (place_meeting(x, tempY, obj_tile)) {
        totalTiles++;
    }
}


if (totalTiles > 1) {
    if (!isJumping && !isDropping) {
        isDropping = true;
        y++;
    }
}
