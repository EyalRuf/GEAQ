draw_set_font(fnt_dialog_box);

// Drawing box
draw_set_color(c_black);
draw_rectangle(x, y, x + BOX_WIDTH, y + BOX_HEIGHT, false);
if (isBoxFocussed) {
	draw_set_color(c_white);
	draw_line_width(x - 5, y - 5, x + BOX_WIDTH + 5, y - 5, 6);
	draw_line_width(x - 5, y + BOX_HEIGHT + 5, x + BOX_WIDTH + 5, y + BOX_HEIGHT + 5, 6);
	draw_line_width(x - 5, y - 5, x - 5, y + BOX_HEIGHT + 5, 6);
	draw_line_width(x + BOX_WIDTH + 5, y - 5, x + BOX_WIDTH + 5, y + BOX_HEIGHT + 5, 6);	
}

// Draw divider
draw_set_color(c_gray);
draw_line_width(DIVIDER_X, DIVIDER_Y1, DIVIDER_X, DIVIDER_Y2, 6);

// Drawing NPC text
draw_set_color(c_white);
draw_text_ext(NPC_TEXT_X, NPC_TEXT_Y, npcText, LINE_SEPARATION, TEXT_AREA_WIDTH);

// Drawing Answer array
for (i = 0; i < ds_list_size(answerArr); i++) {
	var ansNode = answerArr[| i];
	var text = ansNode[? global.DIALOG_MAP_TEXT_PROPNAME];
	if (i == selectedAnswerIndex) {
		text = "> " + text;
		draw_set_color(c_green);

		if (selectedAnswerHighlighted) {
			draw_rectangle(ANSWERS_X, ANSWERS_Y + (LINE_SEPARATION * i),
				ANSWERS_X + TEXT_AREA_WIDTH, ANSWERS_Y + (LINE_SEPARATION * i) + LINE_SEPARATION, false);
		}
		
		draw_set_color(c_white);
	}
	
	draw_text_ext(ANSWERS_X, ANSWERS_Y + (LINE_SEPARATION * i), 
		text, LINE_SEPARATION, TEXT_AREA_WIDTH);
}