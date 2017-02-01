/**
 * Destroys all homing projectiles associated with the specified entity.
 *
 * @param argument[0]
 *        The entity being targeted by the projectiles that are to be destroyed.
 */

if (is_undefined(argument[0]) == false) {
    with (obj_projectile_homing) {
        if (target == argument[0]) {
            instance_destroy();
        }
    }
}
