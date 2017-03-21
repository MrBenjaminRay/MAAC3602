// To Jump:
//      Must not be jumping.
//      Must be standing on the ground.
var canJump = isJumping == false;
canJump &= place_meeting(x, y + 1, obj_physicsTile);

if (canJump) {
    currentJumpSpeed = -abs(jumpSpeed) * global.deltaTime;
    isJumping = true;
    
    // Boss-Specific Code:
    switch (self) {
        case obj_enemy_boss_large_A:
        case obj_enemy_boss_large_B:
        case obj_enemy_boss_large_C:
        case obj_enemy_boss_large_D:
        case obj_enemy_boss_mini_A:
        case obj_enemy_boss_mini_B:
        case obj_enemy_boss_mini_C:
        case obj_enemy_boss_mini_D: {
            scr_screenShake(10, 2);
            break;
        }
    }
}
