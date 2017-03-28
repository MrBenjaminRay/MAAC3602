/**
 * Calculates smooth(er) interpolation of a single value between two edge values.
 * See:  https://en.wikipedia.org/wiki/Smoothstep (look at SmoothER Step)
 * NOTE:    Please don't change this unless you know waht you're doing.
 *          This is used for some camera movement.
 *
 * @param argument[0]
 *        The left edge
 *
 * @param argument[1]
 *        The right edge
 *
 * @param argument[2]
 *        The input value (let's call it V)
 *
 * @return
 *      The new smoothed(er) version of input value V
 */

var edge0 = argument[0];
var edge1 = argument[1];
var v     = argument[2];

// Scale, bias and saturate x to 0..1 range
v = clamp((v - edge0)/(edge1 - edge0), 0.0, 1.0);
// Evaluate polynomial
return v*v*v*(v*(v*6 - 15) + 10);

