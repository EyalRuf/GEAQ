/// create_item_map ()

var allItemMap = ds_map_create();
var apple = ds_map_create();
var carrot = ds_map_create();

apple[? global.ITEM_MAP_ID_PROPNAME] = 0;
apple[? global.ITEM_MAP_SPRITE_PROPNAME] = spt_apple;
allItemMap[? 0] = apple;

carrot[? global.ITEM_MAP_ID_PROPNAME] = 1;
carrot[? global.ITEM_MAP_SPRITE_PROPNAME] = spt_carrot;
allItemMap[? 1] = carrot;

return allItemMap;