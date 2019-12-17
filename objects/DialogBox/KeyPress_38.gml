answerListSize = round((ds_list_size(answerArr) - 1));

if (isBoxFocussed)
	selectedAnswerIndex = selectedAnswerIndex == 0 ? answerListSize : selectedAnswerIndex - 1;