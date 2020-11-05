if sprite_index == sprDoorOpening
{
	instance_create_layer(x,y,"Instances",objDoorOpenFromStart);
	instance_destroy();
}