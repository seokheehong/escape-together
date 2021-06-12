var xDirection = keyboard_check(vk_right) - keyboard_check(vk_left); // turns 1 = right, -1 = left, 0 = doesn't move
var jump = keyboard_check_pressed(vk_space);	// checks if 'space' is pressed, for jumping
var onTheGround = place_meeting(x, y + 1, oWall);	// tells us if player is on the ground or not
													// place_meeting(current pos of player, +1 on vertical axis 
													// (just above the ground), object to manage collisions ) 
													// checks if two objects are meeting at given position
													
if (xDirection != 0) image_xscale = xDirection;		// changes direction of sprite depending on movement

xSpeed = xDirection * spd;
ySpeed++;

if (onTheGround) {
	if (xDirection != 0) { sprite_index= sPlayerRun_strip7;}
	else { sprite_index = sPlayerIdle_strip4;}
	
	if (jump) {
	ySpeed = -15;
	}
} else {
	sprite_index = sPlayerJump;
}

if (place_meeting(x + xSpeed, y, oWall)) {

	while (	!place_meeting(x + sign(xSpeed), y, oWall)) {
		x += sign(xSpeed);
	}
	
	xSpeed = 0;
}

x += xSpeed;

if (place_meeting(x, y + ySpeed, oWall)) {
	
	while (	!place_meeting(x, y + sign(ySpeed), oWall)) {
		y += sign(ySpeed);
	}
	
	ySpeed = 0;
}

y += ySpeed;