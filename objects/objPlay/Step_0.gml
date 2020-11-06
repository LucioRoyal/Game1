if position_meeting(mouse_x,mouse_y,objPlay)
{
	sprite_index = sprPlayHighlight;	
}
else
{
	sprite_index = sprPlay;	
}

if mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,objPlay)
{
	room_goto(2);
}