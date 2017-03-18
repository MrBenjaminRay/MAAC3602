/**
 * Calculate kickback offset for weapon based on current kickback level
 *
 */

// Calculate additional x/y weapon offset based on weapon kickback
// Negative value X, positive value Y (because 0 is up)
weaponKickbackOffsetX = -weaponKickback * cos(degtorad(weaponObj.image_angle));
weaponKickbackOffsetY = weaponKickback * sin(degtorad(weaponObj.image_angle));

// Adjust the weapon position with kickback offset applied
weaponObj.x = x + weaponXOffset + weaponKickbackOffsetX;
weaponObj.y = y + weaponYOffset + weaponKickbackOffsetY;
