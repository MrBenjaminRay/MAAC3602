// This script adds a smoke particle emitter to the object from which
// this script is called.  The emitter will be killed automatically
// when the parent object is destroyed. 

// Argument0 is sprite x & y scale (0 < value <= 1)

// Create emitter instance
var inst = instance_create(x, y, obj_emitter_smoketrail);

inst.particleScale = argument0;

// Set emitter instance's parent to this object instance (projectile, tower, whatever it is)
inst.parentObject = id;

// Get reference to smoke emitter so we can shut it down if needed
smokeTrail = inst;
