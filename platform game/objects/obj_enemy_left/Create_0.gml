// Create Event
speed = 2;
movingRight = true;

// Step Event
if (movingRight) {
    x += speed;
    sprite_index = spr_enemy_right; // Assign right-facing sprite
} else {
    x -= speed;
    sprite_index = spr_enemy_left; // Assign left-facing sprite
}

// Reverse direction at boundaries
if (x >= room_width - sprite_width || x <= 0) {
    movingRight = !movingRight;
}