image_xscale = wave(ITEM_BREATH_START_SCALE, ITEM_BREATH_END_SCALE, ITEM_BREATH_INTERVAL, ITEM_BREATH_OFFSET);
image_yscale = wave(ITEM_BREATH_START_SCALE, ITEM_BREATH_END_SCALE, ITEM_BREATH_INTERVAL, ITEM_BREATH_OFFSET);

playerInVicinity = distance_to_object(Player) < HIGHLIGHTED_RANGE;