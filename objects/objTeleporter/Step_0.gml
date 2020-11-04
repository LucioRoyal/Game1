if(place_meeting(x,y+1,objSolid) || place_meeting(x,y+1,objBelt))
{
	vspeed = 0;	
}
else
{
	vspeed = 4;	
}

if(keyboard_check_pressed(ord("F")))
{
	global.Tele = 0;
	instance_destroy();
}
	
if(place_meeting(x,y+1,objBelt) && global.beltRight == true)
{
	x++;
}
else if(place_meeting(x,y+1,objBelt) && global.beltRight == false)
{
	x--;
}

if(!place_meeting(x,y-2,objSolid))
{
	global.portable = true;
}
else
{
	global.portable = false;
}

global.teleporterX = x;
global.teleporterY = y;