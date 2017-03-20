/**
 * Shows sprite for boss drop acquired. Should be executed when
 * the drop is picked up.
 *
 */

// Boost the icon
with (obj_hud_bossObject) {
    scale = scaleLevelBoosted;
    // Set change cue display time
    changeCueTimeLeft = changeCueTime;
}

