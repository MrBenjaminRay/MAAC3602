// Create emitter if doesn't already exist
if (!instance_exists(emitter_fire)) {
    emitter_fire = part_emitter_create(global.partsys_fire);
}

// Move emitter with object
part_emitter_region(global.partsys_fire,emitter_fire,x-10,x+10,y-5, y,ps_shape_rectangle,ps_distr_linear);

// Emit
part_emitter_burst(global.partsys_fire,emitter_fire,global.part_fire,2);
part_emitter_burst(global.partsys_fire,emitter_fire,global.part_cinder,-5);

