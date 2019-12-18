/// create_item_map ()

var allItemMap = ds_map_create();
var apple = ds_map_create();
var carrot = ds_map_create();

apple[? global.ITEM_MAP_ID_PROPNAME] = 0;
apple[? global.ITEM_MAP_SPRITE_PROPNAME] = spt_apple;
apple[? global.ITEM_MAP_UNLOCKS_DIALOG_NODE_ID] = 203;
allItemMap[? 0] = apple;

carrot[? global.ITEM_MAP_ID_PROPNAME] = 1;
carrot[? global.ITEM_MAP_SPRITE_PROPNAME] = spt_carrot;
carrot[? global.ITEM_MAP_UNLOCKS_DIALOG_NODE_ID] = 120;
allItemMap[? 1] = carrot;

return allItemMap;