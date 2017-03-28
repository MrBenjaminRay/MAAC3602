/**
 * Initializes all game levels by calling scr_statistics_initializeLevel()
 * for all levels.  All levels need to be initialized for the HUB to get
 * stats data for them, so instead of adding more complicated null-checking
 * logic to the HUB, we simply initialize all levels in the HUB creation
 * code.  (Data for levels already initialized is not overwritten.)
 *
 */

scr_statistics_initializeLevel(rm_level_moon);
scr_statistics_initializeLevel(rm_level_forest);
scr_statistics_initializeLevel(rm_level_desert);
scr_statistics_initializeLevel(rm_level_ice);
scr_statistics_initializeLevel(rm_level_underwater);
scr_statistics_initializeLevel(rm_level_asteroid);
scr_statistics_initializeLevel(rm_level_mars);
scr_statistics_initializeLevel(rm_level_earth);

