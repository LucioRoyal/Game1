if place_meeting(x,y,objSolid) || place_meeting(x,y,objDoorClosed) || place_meeting(x,y,objDoorOpenedFromStartClosed) || place_meeting(x,y,objPlayer)
{
	instance_destroy();	
}