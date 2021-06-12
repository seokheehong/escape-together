//player input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_dn = keyboard_check(vk_down);

//moves the player across the screen
var horiz = key_right - key_left; 
var vert = key_dn - key_up;
hsp = horiz * walksp;
vsp = vert * walksp;

///horizontal collides with walls
if (place_meeting(x+hsp,y,oWall2))
{
	while (!place_meeting(x+sign(hsp),y,oWall2))
	{
		x = x + sign(hsp);
		}
		hsp = 0;
}
x = x + hsp;

//vertical collides with walls
if (place_meeting(x,y+vsp,oWall2))
{
	while (!place_meeting(x,y+sign(vsp),oWall2))
	{
		y = y + sign(vsp);
		}
		vsp = 0;
}
y = y + vsp;
