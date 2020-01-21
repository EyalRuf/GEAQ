event_inherited();

// GM variable assignment
friction = 0.05;
sprite_index = idle_top;
hspeed = 0;
vspeed = 0;
image_xscale = 0.5;
image_yscale = 0.5;

// Constants
MAX_DIRECTIONAL_SPEED = 3.5;
MAX_DIRECTIONAL_SPEED_URCHIN = 1.25;
MOVEMENT_INC = 0.2;

// Variables
currMaxSpeed = MAX_DIRECTIONAL_SPEED;
canMove = true;
interacting = false;
interactingNpcX = 0;
interactingNpcY = 0;