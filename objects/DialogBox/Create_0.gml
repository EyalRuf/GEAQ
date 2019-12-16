// Constants
BOX_WIDTH = 1688;
BOX_HEIGHT = 423;
BOTTOM_BUFFER = 96;

DIALOG_BOX_X = (window_get_width() - BOX_WIDTH) / 2;
DIALOG_BOX_Y = window_get_height() - BOX_HEIGHT - BOTTOM_BUFFER;

DIVIDER_X = DIALOG_BOX_X + (BOX_WIDTH / 2);
DIVIDER_Y1 = DIALOG_BOX_Y + (BOX_HEIGHT / 6);
DIVIDER_Y2 = DIVIDER_Y1 + (BOX_HEIGHT * (4 / 6));

BOX_PADDING = 36;
LINE_SEPARATION = 28;
TEXT_AREA_WIDTH = (BOX_WIDTH / 2) - (BOX_PADDING * 2);
NPC_TEXT_X = DIALOG_BOX_X + BOX_PADDING;
NPC_TEXT_Y = DIALOG_BOX_Y + BOX_PADDING;
ANSWERS_X = DIVIDER_X + BOX_PADDING;
ANSWERS_Y = DIALOG_BOX_Y + BOX_PADDING;

// Variables
x = DIALOG_BOX_X;
y = DIALOG_BOX_Y;
selectedAnswerIndex = 0;
selectedAnswerHighlighted = false

// Setting Dialog
npcText = get_dialog_text(npc.dialogNodeId);
answerArr = get_dialog_answer_list(npc.dialogNodeId);