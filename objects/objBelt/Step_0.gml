if(global.pressedL)
{
	global.beltRight = false;	
}
else
{
	global.beltRight = true;	
}

if(global.beltRight == true)
{
	sprite_index = sprBelt;
}
else
{
	sprite_index = sprBeltLeft;
}