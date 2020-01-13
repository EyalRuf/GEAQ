/// fullscreen_text(text, font)
/// @param text
/// @param font

// (text, font, lifespan, color, offsetX, offsetY)
with (instance_create_layer(0, 0, "Instances", obj_FullscreenText)) {
	if (argument_count > 0)
		text = argument[0];
		
	if (argument_count > 1)
		font = argument[1];
	
	if (argument_count > 2)
		lifespan = argument[2];
	
	if (argument_count > 3)
		clr = argument[3];

	if (argument_count > 4)
		offsetX = argument[4];
		
	if (argument_count > 5)
		offsetY = argument[5];
}