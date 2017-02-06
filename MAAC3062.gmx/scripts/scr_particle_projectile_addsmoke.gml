// This script adds a smoke particle emitter to the object from which
// this script is called.  The emitter will be killed automatically
// when the parent object is killed.

// Create emitter instance
inst = instance_create(x, y, obj_particle_emitter_smoke);

// Set instance's parent to this object
parentObject = id;

show_debug_message('CREATED EMITTER');
