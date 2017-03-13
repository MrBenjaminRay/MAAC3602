// Stop flying & start to drop
// Reverse direction, set speed, add gravity
gravity = retractGravity;
//speed = 0;
speed = retractSpeed;
//direction += 180;
mode = "FALL";

if (instance_exists(smokeTrail)) {
    with (smokeTrail) {
        instance_destroy();
    }
}

