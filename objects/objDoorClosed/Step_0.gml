if global.pressedB == 1
{
	DoorOpened = true;
}
else
{
	DoorOpened = false;	
}

if DoorOpened == true
{
	sprite_index = sprDoorOpening;	
}
else
{
	sprite_index = sprDoorClosed;	
}