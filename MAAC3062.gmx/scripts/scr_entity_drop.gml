// Determine total number of platforms below the entity:

// Clamp the x position to the nearest multiple of 32:
var tempX;

if (x % 32 < 16) {
    tempX = x - (x % 32);
} else {
    tempX = x + (16 * ((x % 32)/32));
}

// Clamp the y position to the nearest multiple of 32:
var tempY;

if (y % 32 < 16) {
    tempY = y - (y % 32);
} else {
    tempY = y + (16 * ((y % 32)/32));
}

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
