if place_meeting(x,y,objSword) && canDmg == true
{
	life--;
	canDmg = false;
	sprite_index = sprEnemyHurt;
}

if (place_meeting(x, y+1, objSolid) || place_meeting(x, y+1, objBelt))
{
	vspeed = 0;
	
}