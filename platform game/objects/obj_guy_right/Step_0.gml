move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"))
move_x = move_x * move_speed;

if place_meeting(x, y+2, obj_ground)
{
	move_y = 0;
	
	 if keyboard_check(ord("W")) move_y = - jump_speed;
}
else if move_y < 10
{
	move_y += 1;	
}

move_and_collide(move_x, move_y, obj_ground);

if move_x != 0 
{
	image_xscale = sign(move_x)
}

//Ladder
var onladder = place_meeting(x, y, obj_ladder);

if (onladder) {
if keyboard_check(ord("W")) {
move_y =-2
}
if keyboard_check(ord("S"))  {
move_y =0.2
}
}

// Check if player is dead
if (hp <= 0) {
    show_message("You died!");
    instance_destroy(); // Remove the player from the game
}
