// Gravity logic
if (place_free(x, y + 1)) 
{
    gravity = 1;
}
else 
{
    gravity = 0;
    vspeed = 0; // Ensure vertical speed resets when touching the ground
}

// Apply movement first
var temp_hspeed = 0;

if (keyboard_check(ord("D"))) 
{
    temp_hspeed = 5;
    sprite_index = spr_guy_right;
    last_direction = 1;
}
else if (keyboard_check(ord("A"))) 
{
    temp_hspeed = -5;
    sprite_index = spr_guy_left;
    last_direction = -1;
}
else 
{
    temp_hspeed = 0;

    if (last_direction == 1) sprite_index = spr_guy_idle_right;
    else sprite_index = spr_guy_idle_left;
}

// Only apply horizontal speed if the position is free
if (place_free(x + temp_hspeed, y)) 
{
    hspeed = temp_hspeed;
}

// Jumping logic
if (keyboard_check_pressed(ord("W")) && !place_free(x, y + 1))
{
    vspeed = -20;
    y -= 1; // Slightly move the player up to ensure jump is processed
}

// Apply gravity
vspeed += gravity; // Apply gravity
y += vspeed;       // Move the player vertically
