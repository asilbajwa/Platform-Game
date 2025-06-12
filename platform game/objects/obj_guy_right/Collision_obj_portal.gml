if ( coin_count == 1) {
    room_goto(Room12);
}
else {
		
		show_message("You need to collect all the coins!");
		room_restart()
}