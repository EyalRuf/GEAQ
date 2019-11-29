sprite_index = bottomSprite;
depth = 50;

player = instance_find(Player, 0);
	
playerx = player.x;
playery = player.y;
	
xdifference = x - playerx;
ydifference = y - playery;

if (ydifference > 0) {
	depth = -50;
}

// Continually change the direction the npc is looking when interacted with
if (interactingWithPlayer) {
	if (ydifference > 0 && abs(ydifference) > abs(xdifference)) { // Looking up
		sprite_index = topSprite;
	} else if (xdifference > 0 && abs(xdifference) > abs(ydifference)) { // Looking left
		sprite_index = leftSprite;
	} else if (xdifference < 0 && abs(xdifference) > abs(ydifference)) { // Looking right
		sprite_index = rightSprite;
	} else { // Looking down
		sprite_index = bottomSprite;
	}
}