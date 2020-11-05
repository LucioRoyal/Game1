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
else
{
	vspeed = 3;	
}

shootCd++;

if shootCd == 50
{
	if random(2) >= 1
   {
	 instance_create_layer(x,y,"Instances",objBullet);
   }
   shootCd = 0;
}

targetX = global.playerX;
move_towards_point(targetX,y,1);