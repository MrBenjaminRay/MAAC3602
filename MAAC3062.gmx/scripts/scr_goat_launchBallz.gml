ballX = argument[0];
ballY = argument[1];
goatBallz = argument[2];

for (var i=0; i < goatBallz; i++) {
    var inst = instance_create(ballX, ballY, obj_goatBall);

    var dir;
    if (i < goatBallz/3) {
        // Launch 1/3 of the goat balls upward
        dir = random_range(45, 135);
    } else {
        dir = random_range(0, 359);
    }

    var spd = random_range(0.15, 0.3);

    inst.speed_x = lengthdir_x(spd, dir);
    inst.speed_y = lengthdir_y(spd, dir);
    
    if (dir > 180 && dir < 360) {
        // Ball heading downward, so drop speed (gravity already does most of the work)
        inst.speed_y *= 0.5;
    }

    inst.detDelay = random_range(1000, 2000);
    
    with (inst) {
        scr_particle_projectile_addsmoketrail(.09);
    }
    
}

