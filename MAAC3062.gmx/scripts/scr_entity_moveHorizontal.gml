if (global.state == "Paused") {
    return 0;
}

// Handle smooth movement acceleration & deceleration to wanted speed.

// ONE-LINE VERSION (if acceleration & deceleration speeds are stored in same variable)
//movementSpeed += (movementSpeedDesired - movementSpeed) * movementSpeedAcceleration * global.deltaTime; //Smoothly accelerate / decelerate to the wanted speed.

// TWO-SPEED VERSION (different acceleration & deceleration speeds)
if (abs(movementSpeed) < abs(movementSpeedDesired - movementSpeed)) {
    movementSpeed += (movementSpeedDesired - movementSpeed) * movementSpeedAcceleration * movementFrictionLevel * global.deltaTime;
} else {
    movementSpeed += (movementSpeedDesired - movementSpeed) * movementSpeedDeceleration * movementFrictionLevel * global.deltaTime;
}


// Calculate new proposed position
var newX = x + movementSpeed * movementSlowEffectLevel * global.deltaTime;

// Check collision
if (place_meeting(newX, y, obj_physicsTile)) {
    // Collision at new X
    
    if (place_meeting(x, y, obj_physicsTile) == false) {
        // No collision at current (prev) X, so horizontal movement would be responsible for
        // pushing entity into a tile, and we can't have that.
        
        // Increase X until entity would collide
        while (place_meeting(newX, y, obj_physicsTile) == false) {
            x--;
        }
    } else {
        // Collision at both current and new X, so this horizontal movement would not be
        // responsible for pushing entity into a tile. Entity was already in a tile (for
        // whatever reason), so allow it to continue being in the tile.
        // NOTE: Vertical entity movement occurs first, so it most likely pushed player into
        // a tile. Because jumping & dropping are handled there, we trust it would not let
        // an entity into a tile unless it was warranted.
        // NOTE: This logic is bad when it comes to player jumping into a platform that has a
        // side wall attached (e.g. player jumps into top left/right corner of a box from inside),
        // as player would be allowed into the platform, and nothing would stop it from going
        // through the wall once inside the ceiling. If we ever have that kind of shape on a level,
        // we'll need to adjust this.  (Probably this:  check whether horizontal collision this step 
        // is with same tile as last step, and reject if it's a different tile. Maybe.)
        // ALSO:  If player is falling into a lower left/right corner and dips into the platform,
        // appears to let horizontal movement into platform, then y-- pulls it to top of wall.
        x = newX;
    }

} else {
    // No collision at new X
    x = newX;
}
