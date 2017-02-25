/**
 * Subtracts the specified damage from the shields and health of the specified
 * entity.
 * If the entity reaches 0 health, then the entity is destroyed.
 *
 * @param argument[0]
 *        The entity taking damage.
 *
 *
 * @param argument[1]
 *        The amount of damage being dealt.
 */
var canContinue = is_undefined(argument[0]) == false;
canContinue &= is_undefined(argument[1]) == false;

if (canContinue) {
    var newShield = argument[0].currShield;
    var newHealth = argument[0].currHealth;
    
    if (argument[0].maxShield > 0) {
        newShield -= argument[1];
        
        if (newShield < 0) {
            newHealth += newShield;
            newShield = 0;
        }
        
        argument[0].currShield = newShield;
        argument[0].currHealth = newHealth;
    } else {
        newHealth -= argument[1];
    }
    
    if (newHealth <= 0) {
        with (argument[0]) {
        
            switch(argument[0].object_index){
                case obj_player:
                    audio_play_sound(snd_playerDeath, 0, false);
                    room_goto(rm_hub);
                    break;
                case obj_enemy_air_light:
                    scr_create_explosion(x + sprite_width/2, y + sprite_width/2, 'Enemy_Small');
                    audio_play_sound(snd_enemyDeath_light, 0, false);
                    break;
                case obj_enemy_air_heavy:
                    scr_create_explosion(x + sprite_width/2, y + sprite_width/2, 'Enemy_Large');
                    audio_play_sound(snd_enemyDeath_medium, 0, false); 
                    break;
                case obj_enemy_ground_light:
                    scr_create_explosion(x + sprite_width/2, y + sprite_width/2, 'Enemy_Small');
                    audio_play_sound(snd_enemyDeath_light, 0, false); 
                    break;
                case obj_enemy_ground_medium:
                    scr_create_explosion(x + sprite_width/2, y + sprite_width/2, 'Enemy_Medium');
                    audio_play_sound(snd_enemyDeath_medium, 0, false); 
                    break;
                case obj_enemy_ground_heavy:
                    scr_create_explosion(x + sprite_width/2, y + sprite_width/2, 'Enemy_Large');
                    audio_play_sound(snd_enemyDeath_heavy, 0, false); 
                    break;
                case obj_enemy_ground_jackal:
                    scr_create_explosion(x + sprite_width/2, y + sprite_width/2, 'Enemy_Small');
                    audio_play_sound(snd_enemyDeath_light, 0, false); 
                    break;
                default: //object is a tower
                    // NOTE: Tower explosion, smoke, and new destroyed sprite done in each tower's DESTROY event.
                    audio_play_sound(snd_towerDestroy, 0, false);
                    audio_sound_gain(snd_towerDestroy, 0.6, 0);  
                    break;
            }
            
            if object_is_ancestor(object_index, obj_tower) {
                audio_play_sound(snd_towerDestroy, 0, false);
                audio_sound_gain(snd_towerDestroy, 0.7, 0);  
            }

            // Handle energy drops for enemies        
            if object_is_ancestor(object_index, obj_enemy) {
                var inst = instance_create(x, y, obj_drop_energy);
                inst.value = energyDrop;
            }

            // Destroy the instance
            instance_destroy();
        }
    } else {
        argument[0].currShield = newShield;
        argument[0].currHealth = newHealth;
    }
}
