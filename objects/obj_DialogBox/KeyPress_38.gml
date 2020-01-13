var lastAnswerIndex = round((ds_list_size(answerArr) - 1));

if (isBoxFocussed) {
	selectedAnswerIndex = selectedAnswerIndex == 0 ? lastAnswerIndex : selectedAnswerIndex - 1;
	
	var ansNode = answerArr[| selectedAnswerIndex];
	var isLocked = ansNode[? global.DIALOG_MAP_IS_LOCKED_PROPNAME] &&
		inventory_contains(ansNode[? global.DIALOG_MAP_DEPENDANT_ITEM_IDS_PROPNAME]);
		
	if (isLocked) {
		selectedAnswerIndex = selectedAnswerIndex == 0 ? lastAnswerIndex : selectedAnswerIndex - 1;
	}
}