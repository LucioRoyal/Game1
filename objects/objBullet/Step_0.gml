if place_meeting(x,y,objSolid) || place_meeting(x,y,objDoorClosed) || place_meeting(x,y,objDoorOpenedFromStartClosed) || place_meeting(x,y,objPlayer) || place_meeting(x,y,objShield)
{
	instance_destroy();	
}