if global.buttonPressed == false
{
	doorState = 0;
	sprite_index = sprDoorOpen;
}
else
{
	doorState = 1;
	sprite_index = sprDoorClosing;
	visible = true;
}
