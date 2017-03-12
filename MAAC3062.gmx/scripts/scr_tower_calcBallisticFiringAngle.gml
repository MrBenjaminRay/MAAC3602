/**
 * Calculates the angle of fire to hit a target. Returns noone if target not
 * reachable by ballistic arc from this position.
 *
 * @param argument[0]
 *        The x-axis coordinate of the projectile starting point (source)
 *
 * @param argument[1]
 *        The y-axis coordinate of the projectile starting point (source)
 *
 * @param argument[2]
 *        The x-axis coordinate of the projectile target (destination)
 *
 * @param argument[3]
 *        The y-axis coordinate of the projectile target (destination)
 *
 * @param argument[4]
 *        The initial velocity of the projectile (TBD what kind of value to use here)
 *
 * @param argument[5]
 *        The gravity affecting the projectile (TBD what kind of value to use here)
 *
 * @return
 *        The firing angle in radians, or noone if target not reachable with ballistic arc
 */
 
var source_x = argument[0];
var source_y = argument[1];
var dest_x = argument[2];
var dest_y = argument[3];
var vel = argument[4];
var grav = argument[5];


show_debug_message(source_x);
show_debug_message(source_y);
show_debug_message(dest_x);
show_debug_message(dest_y);
show_debug_message(vel);
show_debug_message(grav);

// Calculate x/y offset from source object (calculations assume firing to one point from 0,0)
var dist_x = - (source_x - dest_x);
var dist_y = (source_y - dest_y);

show_debug_message(dist_x);
show_debug_message(dist_y);

// Originally based on calculations to get angle for ballistic arc to hit target with given speed & gravity:
// https://en.wikipedia.org/wiki/Trajectory_of_a_projectile#Angle_.7F.27.22.60UNIQ--postMath-00000010-QINU.60.22.27.7F_required_to_hit_coordinate_.28x.2Cy.29

// And customized as described by this dude here:
//  http://stackoverflow.com/a/18048502/4669143

var sqrt1 = (vel*vel*vel*vel) - (grav*(grav*(dist_x*dist_x) + 2*dist_y*(vel*vel)));
if (sqrt1 < 0) {
    // Negative number, so we can't proceed with square root.  Won't be able to hit this target.
    return noone;
}
show_debug_message(sqrt1);

// Positive number, so we can proceed with square root.
sqrt1 = sqrt(sqrt1);
show_debug_message(sqrt1);

sqrt1 = ((vel*vel) + sqrt1)/(grav*dist_x);
show_debug_message(sqrt1);

var angleRadians = arctan(sqrt1);

if (angleRadians < 0) {
    angleRadians += pi;
}

return angleRadians;

