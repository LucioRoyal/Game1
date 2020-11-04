sprite_index = sprEnemy;
if life == 2
{
	sprite_index = sprEnemy1;	
}
else if life == 1
{
	sprite_index = sprEnemy2;	
}
else if life == 0
{
	instance_destroy();	
}
canDmg = true;
