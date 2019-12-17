/// read_twine_json()

var twineFile = file_text_open_read("twine.json"), jsonStr = "";

// Reads file into a json string
while (!file_text_eof(twineFile)) {
   jsonStr += file_text_readln(twineFile);
}
file_text_close(twineFile);

// Decode json into a map
var twineMap = ds_map_create();
var twineJsonDefault = json_decode(jsonStr);
var twineJson = twineJsonDefault[?"default"];

// Formatting json map into a conversation node list
for (var i = 0; i < ds_list_size(twineJson); i++) {
	var currNode = twineJson[| i];
	var mappedNode = ds_map_create();
	var nodeId = parseInt(currNode[? global.DIALOG_MAP_ID_PROPNAME]);
	var isQ = currNode[? global.DIALOG_MAP_IS_QUESTION_PROPNAME] == "true" ? true : false;
	
	mappedNode[? global.DIALOG_MAP_ID_PROPNAME] = nodeId;
	mappedNode[? global.DIALOG_MAP_TEXT_PROPNAME] = currNode[? global.DIALOG_MAP_TEXT_PROPNAME];
	mappedNode[? global.DIALOG_MAP_IS_QUESTION_PROPNAME] = isQ;
	
	if (isQ) {
		mappedNode[? global.DIALOG_MAP_ANSWER_ARR_PROPNAME] = 
			convert_string_to_int_arr(currNode[? global.DIALOG_MAP_ANSWER_ARR_PROPNAME]);
	} else {
		mappedNode[? global.DIALOG_MAP_NEXT_QUESTION_ID_PROPNAME] = 
			ds_map_exists(currNode, global.DIALOG_MAP_NEXT_QUESTION_ID_PROPNAME) ?
				parseInt(currNode[? global.DIALOG_MAP_NEXT_QUESTION_ID_PROPNAME]) : -1;
	}
	
	twineMap[? nodeId] = mappedNode;
}

ds_map_destroy(twineJsonDefault);

return twineMap;