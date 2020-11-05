if sprite_index == sprDoorClosing
{
	instance_create_layer(x,y,"Instances",objDoorOpenedFromStartClosed);
	instance_destroy();
}