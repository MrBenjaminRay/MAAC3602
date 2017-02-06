if (argument2 == 'Sparky') {
    var inst = instance_create(argument0, argument1, obj_explosion_sparky);
    inst.image_speed = 0.5;
    inst.image_xscale = .4;
    inst.image_yscale = .4;
} else if (argument2 == 'Normal') {
    var inst = instance_create(argument0, argument1, obj_explosion_normal);
    inst.image_speed = 0.5;
    inst.image_xscale = .6;
    inst.image_yscale = .6;
}
