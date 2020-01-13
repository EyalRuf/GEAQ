var hs = hspeed;
var vs = vspeed;

// For horizontal and verticle movement seperately
// Moving? => next movement tick will be inside wall? => don't move. else => keep moving.
hspeed = hspeed != 0 ? (place_meeting(x + hspeed, y, obj_BASE_WALL) ? 0 : hspeed) : hspeed;
vspeed = vspeed != 0 ? (place_meeting(x, y + vspeed, obj_BASE_WALL) ? 0 : vspeed) : vspeed;

if (hs != hspeed && vs != vspeed) {
	hspeed = -0.5 * hs;
	vspeed = -0.5 * vs;
}

light[| eLight.X] = x;
light[| eLight.Y] = y;