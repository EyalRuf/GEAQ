/// read_twine_json()

var twineFile = file_text_open_read(global.TWINE_FILE_NAME), jsonStr = "";

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
	var isQ = boolean_from_ds_node(currNode, global.DIALOG_MAP_IS_QUESTION_PROPNAME);
	var isLocked = boolean_from_ds_node(currNode, global.DIALOG_MAP_IS_LOCKED_PROPNAME);
	var dependantItemIds = [];
	var isItemDependant = false;
	
	// Setting simple properties first 
	mappedNode[? global.DIALOG_MAP_ID_PROPNAME] = nodeId;
	mappedNode[? global.DIALOG_MAP_TEXT_PROPNAME] = currNode[? global.DIALOG_MAP_TEXT_PROPNAME];
	mappedNode[? global.DIALOG_MAP_IS_QUESTION_PROPNAME] = isQ;
	mappedNode[? global.DIALOG_MAP_IS_LOCKED_PROPNAME] = isLocked;
	
	// Setting properties for questions/answers accordingly
	if (isQ) { // Questions (NPC)
		mappedNode[? global.DIALOG_MAP_ANSWER_ARR_PROPNAME] = 
			convert_string_to_int_arr(currNode[? global.DIALOG_MAP_ANSWER_ARR_PROPNAME]);
			
		if (isLocked && ds_map_exists(currNode, global.DIALOG_MAP_ALTERNATIVE_Q_ID_PROPNAME)) {
			mappedNode[? global.DIALOG_MAP_ALTERNATIVE_Q_ID_PROPNAME] =
				parseInt(currNode[? global.DIALOG_MAP_ALTERNATIVE_Q_ID_PROPNAME]);
		}
	} else { // Answers (PLAYER)
		mappedNode[? global.DIALOG_MAP_NEXT_QUESTION_ID_PROPNAME] = 
			ds_map_exists(currNode, global.DIALOG_MAP_NEXT_QUESTION_ID_PROPNAME) ?
				parseInt(currNode[? global.DIALOG_MAP_NEXT_QUESTION_ID_PROPNAME]) : -1;
		
		// Setting optional answer properties
		mappedNode[? global.DIALOG_MAP_CLOSE_DIALOG_PROPNAME] = 
			boolean_from_ds_node(currNode, global.DIALOG_MAP_CLOSE_DIALOG_PROPNAME);
			
		
		mappedNode[? global.DIALOG_MAP_UNLOCKED_NODE_ID_PROPNAME] = 
			ds_map_exists(currNode, global.DIALOG_MAP_UNLOCKED_NODE_ID_PROPNAME) ?
				parseInt(currNode[? global.DIALOG_MAP_UNLOCKED_NODE_ID_PROPNAME]) : -1;
		
	}
	
	if (ds_map_exists(currNode, global.DIALOG_MAP_DEPENDANT_ITEM_IDS_PROPNAME)) {
		dependantItemIds = convert_string_to_int_arr(currNode[? global.DIALOG_MAP_DEPENDANT_ITEM_IDS_PROPNAME]);
		isItemDependant = true;
	}
		
	mappedNode[? global.DIALOG_MAP_DEPENDANT_ITEM_IDS_PROPNAME] = dependantItemIds;
	mappedNode[? global.DIALOG_MAP_IS_ITEM_DEPENDANT_PROPNAME] = isItemDependant;
	
	twineMap[? nodeId] = mappedNode;
}

ds_map_destroy(twineJsonDefault);
return twineMap;