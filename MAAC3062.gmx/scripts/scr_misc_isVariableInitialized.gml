/**
 * Determines whether or not the specified variable is defined and not noone.
 *
 * @param argument[0]
 *      The variable to check.
 *
 * @return
 *      Whether or not the specified variable is defined and not noone.
 */
 
var isInitialized = is_undefined(argument[0]) == false;
isInitialized &= argument[0] != noone;

return isInitialized;
