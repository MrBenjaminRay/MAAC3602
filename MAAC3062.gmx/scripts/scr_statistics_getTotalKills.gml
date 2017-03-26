/**
 * Retrieves the total kills for the current level.
 *
 * @return
 *        The total kills.
 */
 
var kills = scr_statistics_getData(17);
kills += scr_statistics_getData(18);
kills += scr_statistics_getData(19);
kills += scr_statistics_getData(20);
kills += scr_statistics_getData(21);
kills += scr_statistics_getData(22);
kills += scr_statistics_getData(23);
kills += scr_statistics_getData(24);
return kills;
