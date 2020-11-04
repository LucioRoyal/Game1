if(global.buttonPressed == true)
{
	sprite_index = sprButtonPressedHighlight;	
}
else
{
	sprite_index = sprButton;	
}

if(global.buttonPressed == false && place_meeting(x,y,objPlayer))
{
	sprite_index = sprButtonHighlight;
}
else if (global.buttonPressed == true && place_meeting(x,y,objPlayer))
{
	sprite_index = sprButtonPressed;	
}