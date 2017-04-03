// Default shadow offset
var shadowOffset = 2;
var shadowAlpha = 0.75;

// Get the draw color so we can reset it after drawing the shadow
var originalColour = draw_get_color();
var originalAlpha = draw_get_alpha();

// Override shadow offset if provided
if (argument_count >= 4) {
    shadowOffset = argument[3];
}

// Override shadow alpha if provided
if (argument_count >= 5) {
    shadowAlpha = argument[4];
}

// Draw the shadow
draw_set_color(c_black);
draw_text(argument[0] + shadowOffset, argument[1] + shadowOffset, argument[2]);

// Restore the original text colour and alpha
draw_set_color(originalColour);
draw_set_alpha(originalAlpha);

// Draw the text
draw_text(argument[0], argument[1], argument[2]);

