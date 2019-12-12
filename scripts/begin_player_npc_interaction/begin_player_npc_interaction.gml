/// begin_player_npc_interaction(npc)
/// @param npc - interacting with

var npcFromParam = argument0;
Player.interacting = true;
Player.interactingNpcX = npcFromParam.x;
Player.interactingNpcY = npcFromParam.y;