var windowWidh = window_get_width();

draw_set_color(c_black);
draw_set_alpha(0.4);
draw_rectangle(0, 0, windowWidh, INV_HEIGHT, false);
draw_set_alpha(0.8);

var itemListSize = ds_map_size(global.inventory);
var currItemId = ds_map_create();

for (var i = 0; i < itemListSize; i++;) {
	if i == 0
		currItemId = ds_map_find_first(global.inventory);
	else 
		currItemId = ds_map_find_next(global.inventory, currItemId);
		
	var currItemObj = global.inventory[? currItemId];
	var currItemSprite = currItemObj[? global.ITEM_MAP_SPRITE_PROPNAME];
	var currX = ITEM_X_OFFSET * (i + 1);
	var currY = (INV_HEIGHT / 2) - (sprite_get_height(currItemSprite) / 2);
	
	draw_sprite(currItemSprite, -1, currX, currY);
}

draw_set_alpha(1);