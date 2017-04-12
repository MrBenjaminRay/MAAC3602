if (argument[0] != noone) {

    // The goat tower always shoots to the left (we used to flip it towards the target)
    var enemyX = nearestEnemy.x + nearestEnemy.sprite_width/2;
    var enemyY = nearestEnemy.y + nearestEnemy.sprite_height/2;
    var projDir;
    var projDirAimed; // Angle towards which the goat is aimed (different from movement)
    var projFlip = true; // True when sending projectile to the left (flip vertically), false when right
    
    launchDir = 125;
    projFlip = true;

    // Spawn projectile (use offset to spawn goat behind tower's mouth):
    var projX = x + weaponXOffset;
    var projY = y + weaponYOffset;
    var proj = scr_spawn_projectile(obj_projectile_mechaGoat, projX, projY, nearestEnemy, false, attackDamage);
    // Initially, direction and aimed direction are same, but gravity will cause it to drop before jets kick in
    proj.direction = launchDir;
    proj.direction_aim = launchDir;
    proj.targetEnemy = nearestEnemy;
    proj.depth = depth + 1; // Goat initially appears behind tower (will be changed to goat's depthAfterLaunch after launch)
    //proj.projFlip = projFlip;
    //proj.image_xscale = -1;
    proj.image_yscale = -1;
    proj.image_angle = proj.direction;
    
    audio_play_sound(snd_basicTower, 0, false);
    audio_sound_gain(snd_basicTower, 0.4, 0);
    
    // Show projectile spawn effect: (NONE FOR GOAT, UNLESS WE THINK OF SOMETHING FUNNY)
    //scr_create_explosion(projX, projY, 'Flash');
    
    // Start kickback (NONE FOR GOAT)
    //scr_entity_weaponKickback_Start();
    
    // Start the mouth open-close animation
    mouthState = 1;
    image_index = 0;
    image_speed = mouthAnimationSpeed;
    
    return proj;

}
