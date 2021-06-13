//ends the game if both players are touching the flags
if (place_meeting(x,y,oPlayer) and place_meeting(x,y,oPlayer2))
{
	game_end()
}