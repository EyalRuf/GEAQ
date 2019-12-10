/// dialog_answer_select (npc, answerNode, currDialogId)
/// @param npc - npc object that this conversation is with
/// @param answerNode - the selected answerNode
/// @param currDialogId - the current dialog object

var npc = argument0;
var answerNode = argument1;
var currDialogId = argument2;

var nextQuestionNodeId = answerNode[? global.DIALOG_MAP_NEXT_QUESTION_ID_PROPNAME];
npc.dialogNodeId = nextQuestionNodeId;
instance_destroy(currDialogId);

if (npc.dialogNodeId == -1) 
	end_player_npc_interaction();
else 
	open_dialog_box(npc, true);