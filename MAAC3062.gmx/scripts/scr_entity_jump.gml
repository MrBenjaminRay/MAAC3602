// To Jump:
//      Must not be dropping through platform.
//      Must be standing on the ground.
var canJump = isDropping == false;
canJump &= isJumping == false;
canJump &= place_meeting(x, y + 1, obj_physicsTile);

if (canJump) {

    isJumping = true;
    
    // Boost vertical speed to jump (with jump speed adjustment if set, where 1 = normal)
    vspeed = -abs(jumpSpeed * jumpAdjust);
    
    // Boss-Specific Code:
    switch (self) {
        case obj_enemy_boss_large_A:
        case obj_enemy_boss_large_B:
        case obj_enemy_boss_large_C:
        case obj_enemy_boss_large_D:
        case obj_enemy_boss_moon:
        case obj_enemy_boss_mini_B:
        case obj_enemy_boss_mini_C:
        case obj_enemy_boss_mini_D: {
            scr_screenShake(10, 2);
            break;
        }
    }
}
