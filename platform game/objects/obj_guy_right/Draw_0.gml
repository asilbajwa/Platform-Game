// Base position ABOVE player's head — raised higher
var text_x = x;
var text_y = y - sprite_height / 2 - 32;  

// Set text alignment and color
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

// Draw first line (elapsed seconds)
draw_text(text_x, text_y, string(text_value));

// Draw second line ("Seconds elapsed") slightly below first line
draw_text(text_x, text_y + 16, "Seconds elapsed");  

// Increase timer by 1 every frame
timer += 1;



