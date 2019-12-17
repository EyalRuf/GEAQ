answerListSize = round((ds_list_size(answerArr) - 1));

if (isBoxFocussed)
	selectedAnswerIndex = selectedAnswerIndex == answerListSize ? 0 : selectedAnswerIndex + 1;