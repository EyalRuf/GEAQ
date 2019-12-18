/// pickup_item (itemId)

var itemId = argument0;
var item = global.itemMap[? itemId];
var unlocksDialogId = item[? global.ITEM_MAP_UNLOCKS_DIALOG_NODE_ID];

ds_map_add(global.inventory, itemId, global.itemMap[? itemId]);

if (unlocksDialogId != -1) {
	var dialogNode = global.dialogMap[? unlocksDialogId];
	dialogNode[? global.DIALOG_MAP_IS_LOCKED_PROPNAME] = false;
}
