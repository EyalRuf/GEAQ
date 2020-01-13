if (!leverActivated && distance_to_object(Player) < ACTIVATION_RANGE) {
	open_lever_door(openedDoorId);
	leverActivated = true;
}