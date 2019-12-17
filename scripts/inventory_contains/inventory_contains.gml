/// inventory_contains (itemIdArr) - checks if inventory contains these items
/// @param itemIdArr - array of items to check if inventory contains

var itemIdArr = argument0, flag = true;

for (var i = 0; flag && i < array_length_1d(itemIdArr); i++) {
	if (!ds_map_exists(global.inventory, itemIdArr[i])) {
		flag = false;
	}	
}

return flag;