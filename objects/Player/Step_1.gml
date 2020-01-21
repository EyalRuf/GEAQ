// Urchin slow
if (place_meeting(x + hspeed, y + vspeed, obj_SeaUrchin)) {
	currMaxSpeed = MAX_DIRECTIONAL_SPEED_URCHIN;
	
	if (abs(hspeed) > currMaxSpeed) 
		hspeed = sign(hspeed) * currMaxSpeed;
		
	if (abs(vspeed) > currMaxSpeed)
		vspeed = sign(vspeed) * currMaxSpeed;
}
else
	currMaxSpeed = MAX_DIRECTIONAL_SPEED;