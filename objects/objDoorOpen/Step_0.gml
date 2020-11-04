if global.buttonPressed == false
{
	DoorOpened = false;
}
else
{
	DoorOpened = true;	
}

if DoorOpened == false
{
	sprite_index = sprDoorClosing;
	visible = true;
}
else
{
	sprite_index = sprDoorOpen;	
}