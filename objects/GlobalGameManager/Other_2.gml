// Global constants
global.TWINE_FILE_NAME = "twine.json";
global.dialogNodeIdPropName = "dialogNodeId";

// Properties shared by answers and questions
global.DIALOG_MAP_ID_PROPNAME = "id";
global.DIALOG_MAP_TEXT_PROPNAME = "text";
global.DIALOG_MAP_IS_QUESTION_PROPNAME = "isQ";
global.DIALOG_MAP_IS_LOCKED_PROPNAME = "isLocked";

// Only question properties
global.DIALOG_MAP_ANSWER_ARR_PROPNAME = "ansArr";
global.DIALOG_MAP_ALTERNATIVE_Q_ID_PROPNAME = "alternativeQId";

// Only answer properties
global.DIALOG_MAP_NEXT_QUESTION_ID_PROPNAME = "nextQId";
global.DIALOG_MAP_CLOSE_DIALOG_PROPNAME = "closeDialog";
global.DIALOG_MAP_DEPENDANT_ITEM_IDS_PROPNAME = "dependantItemIds";
global.DIALOG_MAP_UNLOCKED_NODE_ID_PROPNAME = "unlockedNodeId";

global.ITEM_MAP_ID_PROPNAME = "id";
global.ITEM_MAP_SPRITE_PROPNAME = "sprite";

// Global variables
global.dialogMap = read_twine_json();
global.itemMap = create_item_map();
global.inventory = ds_map_create();