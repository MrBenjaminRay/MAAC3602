// Determine Level ID:
var levelId = -1;

switch (room) {
    case rm_level_moon: {
        levelId = 0;
        break;
    }
    case rm_level_forest: {
        levelId = 1;
        break;
    }
    case rm_level_desert: {
        levelId = 2;
        break;
    }
    case rm_level_ice: {
        levelId = 3;
        break;
    }    
    case rm_level_underwater: {
        levelId = 4;
        break;
    }
    case rm_level_asteroid: {
        levelId = 5;
        break;
    }
    case rm_level_mars: {
        levelId = 6;
        break;
    }
    case rm_level_earth: {
        levelId = 7;
        break;
    }
    // When we add more levels, insert them starting at id 5 and bump tutorials to end of array
    case rm_level_premoon: {
        levelId = 8;
        break;
    }

}

return levelId;
