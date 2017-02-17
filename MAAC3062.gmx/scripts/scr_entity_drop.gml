if (global.state == "Paused") {
    return 0;
}

if (scr_entity_canDrop()) {
    if (!isJumping && !isDropping) {
        isDropping = true;
        y++;
    }
}
