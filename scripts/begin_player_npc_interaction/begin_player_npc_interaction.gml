/// begin_player_npc_interaction(npc)
/// @param npc - interacting with

var npcIdFromParam = argument0;

Player.interacting = true;
Player.interactingNpcX = variable_instance_get(npcIdFromParam, "x");
Player.interactingNpcY = variable_instance_get(npcIdFromParam, "y");