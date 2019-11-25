/// @function bumpNPC()
/// @description Bump npc in the direction of the player

npc0 = instance_find(NPC_0, 0);
plyr = instance_find(Player, 0);
npc0.hspeed = plyr.hspeed;
npc0.vspeed = plyr.vspeed;