if (interacting)  {
	canMove = !canMove;
	
	xdifference = x - interactingNpcX;
	ydifference = y - interactingNpcY;

	if (ydifference > 0 && abs(ydifference) > abs(xdifference)) { // Looking up
		sprite_index = idle_top;
	} else if (xdifference > 0 && abs(xdifference) > abs(ydifference)) { // Looking left
		sprite_index = idle_left;
	} else if (xdifference < 0 && abs(xdifference) > abs(ydifference)) { // Looking right
		sprite_index = idle_right;
	} else { // Looking down
		sprite_index = idle_bottom;
	}
}