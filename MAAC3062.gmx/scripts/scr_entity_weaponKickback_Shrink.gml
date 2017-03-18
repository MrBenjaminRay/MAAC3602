/**
 * Shrinks weapon kickback based on variables set for this object.
 *
 */

if (weaponKickback > 0) {
    weaponKickback -= weaponKickbackResetSpeed * global.deltaTime;
    clamp(weaponKickback, 0, weaponKickbackMax);
}
