// This script adds a smoke particle emitter to the object from which
// this script is called.  The emitter will be killed automatically
// when the parent object is killed.

// Argument0 is sprite x & y scale (0 < value <= 1)

// Create emitter instance
var inst = instance_create(x, y, obj_particle_emitter_smoke);

inst.particleScale = argument0;

// Set emitter instance's parent to this object instance (projectile, tower, whatever it is)
inst.parentObject = id;

