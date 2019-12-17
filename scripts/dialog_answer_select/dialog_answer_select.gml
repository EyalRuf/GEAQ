/// dialog_answer_select (npcInstanceId, answerNode, currDialogId)
/// @param npc - npc object that this conversation is with
/// @param answerNode - the selected answerNode
/// @param currDialogId - the current dialog object

var npcInstanceId = argument0;
var answerNode = argument1;
var currDialogId = argument2;

// Unlock nodes if this answer unlocks anything
var unlockedNodeId = answerNode[? global.DIALOG_MAP_UNLOCKED_NODE_ID_PROPNAME];
if (unlockedNodeId != -1) {
	unlock_node(unlockedNodeId);
}

// Sets nextQId in npc and destroys current dialogObj
var nextQuestionNodeId = answerNode[? global.DIALOG_MAP_NEXT_QUESTION_ID_PROPNAME];
variable_instance_set(npcInstanceId, global.dialogNodeIdPropName, nextQuestionNodeId);
instance_destroy(currDialogId);

// End/close dialog or open next dialog
if (nextQuestionNodeId == -1 || answerNode[? global.DIALOG_MAP_CLOSE_DIALOG_PROPNAME] == true) 
	end_player_npc_interaction();
else 
	open_dialog_box(npcInstanceId, true);