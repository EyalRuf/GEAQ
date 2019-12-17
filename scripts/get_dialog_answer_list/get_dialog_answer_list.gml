/// get_dialog_answer_list questionNodeId)
/// @param questionNodeId - node id of the question to get the answers for

var questionNodeId = argument0;
var quesionNode = ds_map_find_value(global.dialogMap, questionNodeId);
var ansArr = quesionNode[? global.DIALOG_MAP_ANSWER_ARR_PROPNAME];
var answerList = ds_list_create();

for (var i = 0; i < array_length_1d(ansArr); i++) {
	var ansNodeId = ansArr[i];
	ds_list_add(answerList, ds_map_find_value(global.dialogMap, ansNodeId));
}

return answerList;