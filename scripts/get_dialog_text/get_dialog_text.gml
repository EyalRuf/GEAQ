/// get_dialog_text (questionNodeId)
/// @param questionNodeId - node id of the question to get the text for

var questionNodeId = argument0;
var quesionNode = ds_map_find_value(global.dialogMap, questionNodeId);

return quesionNode[? global.DIALOG_MAP_TEXT_PROPNAME];