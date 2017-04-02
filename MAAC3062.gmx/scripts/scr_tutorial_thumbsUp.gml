/**
 * Displays a thumbs up with a 'ding' sound when the player does the
 * right thing in a tutorial.
 * The coordinates should be pretty close to where the player or the
 * player objective was in the tutorial.  (E.g. if they had to walk to 
 * the right, put this near where they walked, etc.)
 *
 * @param argument[0]
 *        The x coordinate where the thumbs up should be centered.
 * @param argument[1]
 *        The y coordinate where the thumbs up should be centered.
 *
 */

instance_create(argument[0], argument[1], obj_thumbsUp);

