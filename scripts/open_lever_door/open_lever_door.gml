/// open_lever_door (openedDoorId)
/// @param openedDoorId - doorId to open with this lever

var openedDoorId = argument0;

with (obj_BASE_LEVER_DOOR) {
	if (doorId == openedDoorId)
		instance_destroy(id);
}