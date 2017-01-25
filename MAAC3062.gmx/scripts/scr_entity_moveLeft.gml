if (place_meeting(x - movementSpeed * global.deltaTime, y, obj_tile) == false) {
    x -= movementSpeed * global.deltaTime;
} else {
    // Fix gaps between entity and tiles where movement speed is too great to reach.
    while (place_meeting(x - 1, y, obj_tile) == false) {
        x--;
    }
}
