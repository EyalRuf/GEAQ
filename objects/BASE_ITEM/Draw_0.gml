if (playerInVicinity) {
	//Draw the outline 1 pixel off in each direction
	//var outline_size = wave(1.0, 3.0, 3.0, 0);
	for (var i = 1; i < 3; i++) {
		draw_sprite_ext(sprite_index, -1, x - i, y, image_xscale, image_yscale, 0, HIGHLIGHTED_COLOR, 0.8);
		draw_sprite_ext(sprite_index, -1, x + i, y, image_xscale, image_yscale, 0, HIGHLIGHTED_COLOR, 0.8);
		draw_sprite_ext(sprite_index, -1, x, y - i, image_xscale, image_yscale, 0, HIGHLIGHTED_COLOR, 0.8);
		draw_sprite_ext(sprite_index, -1, x, y + i, image_xscale, image_yscale, 0, HIGHLIGHTED_COLOR, 0.8);
	}
}

draw_self();