var isDoneFloor = true;

with (obj_BASE_NPC) {
	if (dialogNodeId != -1) {
		isDoneFloor = false;
	}
}

if (isDoneFloor) {
	with (obj_ExitDoor) {
		sprite_index = animation_sprite;
		instance_create_layer(x, y + 50, "Vision", obj_light_base);
	}
	
	if (Player.y <= -35) {
		game_restart();
	}
}