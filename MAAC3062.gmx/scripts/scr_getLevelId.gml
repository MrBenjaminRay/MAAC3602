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
}

return levelId;
