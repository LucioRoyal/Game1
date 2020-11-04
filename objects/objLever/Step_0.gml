if(global.leverPressed == true)
{
	sprite_index = sprLever1;	
}
else
{
	sprite_index = sprLever0;	
}

if(global.leverPressed == false && place_meeting(x,y,objPlayer))
{
	sprite_index = sprLever0Highlight;	
}
else if (global.leverPressed == true && place_meeting(x,y,objPlayer))
{
	sprite_index = sprLever1Highlight;	
}