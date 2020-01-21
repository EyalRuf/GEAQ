/// create_item_map ()

var allItemMap = ds_map_create();
var suit = ds_map_create();
var razor = ds_map_create();
var suitcase = ds_map_create();

suit[? global.ITEM_MAP_ID_PROPNAME] = 0;
suit[? global.ITEM_MAP_SPRITE_PROPNAME] = spt_suit;
allItemMap[? 0] = suit;

razor[? global.ITEM_MAP_ID_PROPNAME] = 1;
razor[? global.ITEM_MAP_SPRITE_PROPNAME] = spt_razor;
allItemMap[? 1] = razor;

suitcase[? global.ITEM_MAP_ID_PROPNAME] = 2;
suitcase[? global.ITEM_MAP_SPRITE_PROPNAME] = spt_suitcase;
allItemMap[? 2] = suitcase;

return allItemMap;