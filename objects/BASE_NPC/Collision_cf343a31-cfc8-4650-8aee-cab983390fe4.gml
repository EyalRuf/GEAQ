// If the npc is not being bumped currently
if (!bumped) {
	
	// Find the difference between the npc and the npc x and y
	player = instance_find(Player, 0);
	xdifference = x - player.x;
	ydifference = y - player.y;
	
	// The npc's destination is set to its x and y + the differences in 
	// half the player's speed
	xdestination = x + xdifference;
	ydestination = y + ydifference;
	move_towards_point(xdestination, ydestination, player.speed - 1);
	
	// Npc is now being bumped
	bumped = true;
	interactingWithPlayer = true;
}

