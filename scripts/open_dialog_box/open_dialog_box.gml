/// open_dialog_box(npc, isBoxFocussed)
/// @param npc - the npc object that were opening dialog for
/// @param isBoxFocussed - is dialog box opened focussed

with (instance_create_layer(0, 0, "TopLayer", DialogBox)) {
	npc = argument[0];
	if (argument_count > 1) {
		isBoxFocussed = argument[1];
	}
}