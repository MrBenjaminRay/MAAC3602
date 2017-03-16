/**
 * Converts the specified time, in seconds, to delta time.
 *
 * Note: May be the most useless function ever.
 *
 * @param argument[0]
 *        The time, in seconds.
 *
 * @return
 *        The time, in delta time.
 *        If the input is undefined or noone, then -1 is returned.
 */
 
if (scr_misc_isVariableInitialized(argument[0])) {
    return argument[0] * 1024;
}
