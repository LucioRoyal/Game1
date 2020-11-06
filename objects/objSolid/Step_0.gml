if keyboard_check_pressed(vk_f11) && full == true && fullCd >= 50
{
	full = false;
	window_set_fullscreen(true);
	fullCd = 0;
}
else if keyboard_check_pressed(vk_f11) &&  fullCd >= 50
{
	full = true;
	window_set_fullscreen(false);
	fullCd = 0;
}

fullCd++;

if fullCd >= 100
{
	fullCd = 50;	
}