var isDialogLeft = false;
with (BASE_NPC) {
	if (dialogNodeId != -1 && dialogNodeId != 300) {
		isDialogLeft = true;
	}
}

if (!isDialogLeft)
	room_goto(1);