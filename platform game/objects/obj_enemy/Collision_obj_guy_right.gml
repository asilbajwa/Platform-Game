// Deal damage to player
if (instance_exists(other)) {
    other.hp -= 10;}
	
	// Only damage if the timer is 0
if (damage_timer <= 0) {
    other.hp -= 5; // Deal 5 damage
    damage_timer = damage_cooldown;
}
