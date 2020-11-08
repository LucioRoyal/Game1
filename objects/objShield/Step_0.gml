image_angle=point_direction(x,y,mouse_x,mouse_y);


if keyboard_check_direct(vk_tab)
{
	x=global.playerX + 16;
	y=global.playerY + 32;
	timerStart = true;
		if timer >= 1
		{
			visible = true;	
		}
}
else
{
	x = 0;
	y = 0;
	visible = false;
	timerStart = false;
	timer = 0;
}

if timerStart == true
{
	timer++;
}