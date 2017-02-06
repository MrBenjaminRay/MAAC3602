// To Jump:
//      Must not be jumping.
//      Must be standing on the ground.
var canJump = isJumping == false;
canJump &= place_meeting(x, y + 1, obj_tile);

if (canJump) {
    currentJumpSpeed = -abs(jumpSpeed) * global.deltaTime;
    isJumping = true;
}
