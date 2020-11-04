if sprite_index == sprDoorClosing
{
	instance_destroy();
	instance_create_layer(x,y,"Instances",objDoorClosed);
}