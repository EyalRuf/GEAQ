if (isBoxFocussed) {
	var selectedAnsNode = answerArr[| selectedAnswerIndex];
	var isLocked = selectedAnsNode[? global.DIALOG_MAP_IS_LOCKED_PROPNAME] &&
		inventory_contains(selectedAnsNode[? global.DIALOG_MAP_DEPENDANT_ITEM_IDS_PROPNAME]);
		
	if (!isLocked) {
		dialog_answer_select(npcInstanceId, selectedAnsNode, id);
	}
	
	selectedAnswerHighlighted = false;
}