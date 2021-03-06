if (argument2 == 'Sparky') {
    var inst = instance_create(argument0, argument1, obj_explosion_sparky);
    inst.image_speed = 0.5;
    inst.image_xscale = .4;
    inst.image_yscale = .4;
} else if (argument2 == 'Enemy_Small') {
    var inst = instance_create(argument0, argument1, obj_explosion_small);
    inst.image_speed = 0.4;
    inst.image_xscale = 1;
    inst.image_yscale = 1;
} else if (argument2 == 'Enemy_Medium') {
    var inst = instance_create(argument0, argument1, obj_explosion_med);
    inst.image_speed = 0.3;
    inst.image_xscale = .75;
    inst.image_yscale = .75;
} else if (argument2 == 'Enemy_Large') {
    var inst = instance_create(argument0, argument1, obj_explosion_med);
    inst.image_speed = 0.2;
    inst.image_xscale = 1;
    inst.image_yscale = 1;
} else if (argument2 == 'Tower') {
    var inst = instance_create(argument0, argument1, obj_explosion_med);
    inst.image_speed = 0.25;
    inst.image_xscale = 1.5;
    inst.image_yscale = 1.5;
} else if (argument2 == 'Normal') {
    var inst = instance_create(argument0, argument1, obj_explosion_normal);
    inst.image_speed = 0.5;
    inst.image_xscale = .6;
    inst.image_yscale = .6;
} else if (argument2 == 'SmallHit') {
    var inst = instance_create(argument0, argument1, obj_explosion_smallhit);
    inst.image_speed = 1;
    inst.image_xscale = .2;
    inst.image_yscale = .2;
} else if (argument2 == 'Flash') {
    var inst = instance_create(argument0, argument1, obj_explosion_flash);
    inst.image_speed = .25;
    inst.image_xscale = 1;
    inst.image_yscale = 1;
} else if (argument2 == 'Muzzle') {
    var inst = instance_create(argument0, argument1, obj_explosion_flash);
    inst.image_speed = 1;
    inst.image_xscale = .5;
    inst.image_yscale = .5;
    inst.depth = obj_projectile_player.depth-1; // Ensure flash is visible in front of first projectile
}
