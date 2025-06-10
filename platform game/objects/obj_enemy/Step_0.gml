/// === ENEMY STEP EVENT ===

// === Get direction toward player ===
var dir = 0;
if (instance_exists(obj_guy_right)) {
    dir = sign(obj_guy_right.x - x);
}

// === Determine if enemy is on the ground ===
var on_ground = place_meeting(x, y + 1, obj_ground);

// === Obstacle detection in front ===
var front_check_x = x + dir * 4;
var obstacle_ahead = place_meeting(front_check_x, y, obj_ground);

// === Check if there is room above to jump (headroom) ===
var headroom_clear = !place_meeting(x, y - 4, obj_ground);

// === Attempt to jump if blocked ===
if (obstacle_ahead && on_ground && headroom_clear) {
    vspeed = jump_power;
}

// === Horizontal movement if no wall ===
if (!place_meeting(x + dir * move_speed, y, obj_ground)) {
    x += dir * move_speed;
}

// === Gravity ===
vspeed += gravity;

// === Vertical collision ===
if (place_meeting(x, y + vspeed, obj_ground)) {
    while (!place_meeting(x, y + sign(vspeed), obj_ground)) {
        y += sign(vspeed);
    }
    vspeed = 0;
}

// === Apply vertical movement ===
y += vspeed;

// === Damage player on contact ===
if (place_meeting(x, y, obj_guy_right)) {
    if (damage_timer <= 0) {
        obj_guy_right.hp -= 5;
        damage_timer = damage_cooldown;
    }
}

// === Damage cooldown timer ===
if (damage_timer > 0) {
    damage_timer--;
}