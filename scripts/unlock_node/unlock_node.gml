/// unlock_node (nodeId)
/// @param - nodeId - nodeId to unlock

var nodeId = argument0;

if (ds_map_exists(global.dialogMap, nodeId)) {
	var node = global.dialogMap[? nodeId];
	node[? global.DIALOG_MAP_IS_LOCKED_PROPNAME] = false;
}