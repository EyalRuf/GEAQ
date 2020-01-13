/// open_dialog_box(npcInstanceId, isBoxFocussed)
/// @param npcInstanceId - the npc instance id that were opening dialog for
/// @param isBoxFocussed - is dialog box opened focussed

var npcId = argument[0];
var currDialogNodeId = variable_instance_get(npcId, global.dialogNodeIdPropName);
var currDialogNode = global.dialogMap[? currDialogNodeId];

// If curr dialog/question is locked we need to use it's alternative
if (currDialogNode[? global.DIALOG_MAP_IS_LOCKED_PROPNAME]) {
	currDialogNodeId = currDialogNode[? global.DIALOG_MAP_ALTERNATIVE_Q_ID_PROPNAME];
} 

var npcDialogText = get_dialog_text(currDialogNodeId);
var npcDialogAnsArr = get_dialog_answer_list(currDialogNodeId);

with (instance_create_layer(0, 0, "Interface", obj_DialogBox)) {
	npcInstanceId = argument[0];
	npcText = npcDialogText;
	answerArr = npcDialogAnsArr;
	if (argument_count > 1) {
		isBoxFocussed = argument[1];
	}
}