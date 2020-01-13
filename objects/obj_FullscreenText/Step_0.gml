if (lifespan != -1 && current_time - timeCreated > lifespan) {
	instance_destroy(id);
}