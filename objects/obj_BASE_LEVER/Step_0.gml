if (distance_to_object(Player) < ACTIVATION_RANGE && !highlightActivated) {
	highlightActivated = true;
	switchlight_door(openedDoorId);
} else if (distance_to_object(Player) > ACTIVATION_RANGE && highlightActivated) {
	highlightActivated = false;
	switchlight_door(openedDoorId);
}