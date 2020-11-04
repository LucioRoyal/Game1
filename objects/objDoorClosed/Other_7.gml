if sprite_index == sprDoorOpening
{
	instance_destroy();
	instance_create_layer(x,y,"Instances",objDoorOpen);
}