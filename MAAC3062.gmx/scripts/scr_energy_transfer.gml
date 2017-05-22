/**
 * Creates a particle of energy that flies from one position to another.
 *
 * @param argument[0]
 *        Source X
 *
 * @param argument[1]
 *        Source Y
 *
 * @param argument[2]
 *        Destination object (e.g. energy hud item)
 *
 */

var sourceX = argument[0];
var sourceY = argument[1];
var destObj = argument[2];

if (instance_exists(argument[2]) == false) {
    // Quit if destination object doesn't exist
    show_debug_message("does not exist");
    return 0;
}

var inst = instance_create(sourceX, sourceY, obj_particle_energy_transfer);

inst.sourceX = sourceX;
inst.sourceY = sourceY;
inst.destObj = destObj;

inst.totalDistance = point_distance(inst.sourceX, inst.sourceY, inst.destObj.x, inst.destObj.y);
inst.remainingDistance = inst.totalDistance;

// Create random point at which this particle stops going slightly offtrack
// and starts heading stright for the target.
inst.mergeDistance = random_range(.1, .2) * inst.totalDistance;

// Set direction, randomizing slightly so particles spread apart
// until they start to merge after mergeDistance
inst.direction = point_direction(inst.sourceX, inst.sourceY, inst.destObj.x, inst.destObj.y);
inst.direction += random_range(-15, 15);

