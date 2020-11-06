if position_meeting(mouse_x,mouse_y,objLoad)
{
	sprite_index = sprLoadHighlight;	
}
else
{
	sprite_index = sprLoad;	
}

if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,objPlay)
{
	game_load("gameSave.dat")
}