// Global constants
global.DIALOG_MAP_ID_PROPNAME = "id";
global.DIALOG_MAP_TEXT_PROPNAME = "text";
global.DIALOG_MAP_IS_QUESTION_PROPNAME = "isQ";
global.DIALOG_MAP_ANSWER_ARR_PROPNAME = "ansArr";
global.DIALOG_MAP_NEXT_QUESTION_ID_PROPNAME = "nextQId";
//global.DIALOG_MAP_IS_LOCKED_BY_ITEM_PROPNAME = "isLockedByItem";
//global.DIALOG_MAP_IS_LOCKED_BY_DIALOG_PROPNAME = "isLockedByDialog";


global.ITEM_MAP_ID_PROPNAME = "id";
global.ITEM_MAP_SPRITE_PROPNAME = "sprite";

// Global variables
global.dialogMap = read_twine_json();
global.itemMap = create_item_map();
global.inventory = ds_map_create();