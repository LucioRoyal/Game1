global.vspd = vspeed;
global.hspd = hspeed;
global.playerX = x;
global.playerY = y;

//Collision
//------------------------------------------------------------------------------------
if (keyboard_check_direct(ord("A")) && !place_meeting(x - 4.6, y, objSolid) && !place_meeting(x - 4.6, y, objDoorClosed))
{
	hspeed =- 5;
	rechts = false;
	layer_hspeed("Background",1);
}
else if (keyboard_check_direct(ord("D")) && !place_meeting(x + 4.6, y, objSolid) && !place_meeting(x + 4.6, y, objDoorClosed))
{
	hspeed =+ 5;
	rechts = true;
	layer_hspeed("Background",-1);
}
else
{
	hspeed = 0;	
	layer_hspeed("Background",0);
}
//------------------------------------------------------------------------------------

//jump + grav

if (place_meeting(x, y+1, objSolid))
{
	vspeed = 0;
	
		if keyboard_check_pressed(vk_space)
		{
			vspeed = -jspeed;	
		}
}
else if (place_meeting(x, y+1, objBelt))
{
	vspeed = 0;
	
		if keyboard_check_pressed(vk_space)
		{
			vspeed = -jspeed;	
		}
}
else if (place_meeting(x, y+1, objPlattform))
{
	vspeed = 0;
	
		if keyboard_check_pressed(vk_space)
		{
			vspeed = -jspeed;	
		}
}
else
{
	if (vspeed < 10)
	{
		vspeed += gspeed;	
	}
}

//vertical collision

if(place_meeting(x, y+vspeed, objSolid))
{
	while(!place_meeting(x, y+sign(vspeed), objSolid))
	{
		y += sign(vspeed)	
	}
	vspeed = 0;
}

if mouse_check_button_pressed(mb_left)
	{
		if(rechts == true)
	{
		instance_create_layer(x+32,y,"Instances",objSword);
		sprite_index = sprPlayerSword;
		image_angle = 0;
	}
	else
	{
		instance_create_layer(x-32,y,"Instances",objSword)
		sprite_index = sprPlayerSwordLeft;
	}
}

if(mouse_check_button_pressed(mb_right) && place_meeting(x,y+4,objSolid) && (global.Tele == 0))
{
	instance_create_layer(x,y,"Instances",objTeleporter);
	global.Tele = 1;
	instance_create_layer(x,y,"Button",objButtonQ);
}
else if(mouse_check_button_pressed(mb_right) && place_meeting(x,y+4,objBelt) && (global.Tele == 0))
{
	instance_create_layer(x,y,"Instances",objTeleporter);
	global.Tele = 1;
	instance_create_layer(x,y,"Button",objButtonQ);
}
else if(mouse_check_button_pressed(mb_right) && place_meeting(x,y+4,objPlattform) && (global.Tele == 0))
{
	instance_create_layer(x,y,"Instances",objTeleporter);
	global.Tele = 1;
	instance_create_layer(x,y,"Button",objButtonQ);
}


if(keyboard_check_pressed(ord("Q")) && (global.Tele == 1) && (global.portable == true))
{
		x = global.teleporterX;
		y = global.teleporterY-16;
		instance_destroy(objTeleporter);
		global.Tele = 0;
}

if(place_meeting(x, y+vspeed, objBelt))
{
	while(!place_meeting(x, y+sign(vspeed), objBelt))
	{
		y += sign(vspeed)	
	}
	vspeed = 0;
}

if(place_meeting(x,y+1,objBelt) && !place_meeting(x+1,y,objSolid) && global.beltRight == true)
{
	x++;
}
else if(place_meeting(x,y+1,objBelt) && !place_meeting(x-1,y,objSolid) && global.beltRight == false)
{
	x--;	
}


//Lever/Button Interaction
//---------------------------------
if(place_meeting(x,y,objLever) && keyboard_check_pressed(ord("E")) && (global.leverPressed == false))
{
	global.leverPressed = true;	
	global.pressedL = 1;
}
else if(place_meeting(x,y,objLever) && keyboard_check_pressed(ord("E")) && (global.leverPressed == true))
{
	global.leverPressed = false;
	global.pressedL = 0;
}

if(place_meeting(x,y,objButton) && keyboard_check_pressed(ord("E")) && (global.buttonPressed == false))
{
	global.buttonPressed = true;	
	global.pressedB = 1;
}
else if(place_meeting(x,y,objButton) && keyboard_check_pressed(ord("E")) && (global.buttonPressed == true))
{
	global.buttonPressed = false;	
	global.pressedB = 0;
}

if(place_meeting(x,y,objButton))
{
	instance_create_layer(x + 32, y, "Button", objButtonE);
}
else
{
	instance_destroy(objButtonE);
}
//---------------------------------

if place_meeting(x,y,objPlattform)
{
	do
	{
		y = y- 0.1;
	}
	until (place_free(x,y)); 
}

if(keyboard_check_pressed(ord("R")) || place_meeting(x,y,objLevelFinish))
{
	room_restart();	
}

if( place_meeting(x,y,objLevelEnd))
{
	x = global.StartCoordX;
	y = global.StartCoordY;
	global.buttonPressed = false;
	global.pressedB = 0;
	global.leverPressed = false;
	global.pressedL = 0;
}

//dash
if keyboard_check_pressed(vk_shift) && mouse_x > x && !place_meeting(x+4.6,y,objSolid) && !place_meeting(x+4.6,y,objDoorClosed) && tpCd < 1
{
	do
	{
		x++;
		dSpeed++;
	}
	until place_meeting(x+4.6,y,objSolid) || dSpeed == 100;
	
	tpCd = 100;
	dSpeed = 0;
	
}
else if keyboard_check_pressed(vk_shift) && mouse_x < x && !place_meeting(x-4.6,y,objSolid) && !place_meeting(x-4.6,y,objDoorClosed) && tpCd < 1
{
	do
	{
		x--;
		dSpeed++;
		vspeed = 0;
	}
	until place_meeting(x-4.6,y,objSolid) || dSpeed == 100;
	
	tpCd = 100;
	dSpeed = 0;
}


if tpCd > 0
{
	tpCd = tpCd - 1;	
}

draw_text(x+5, y+5, "LEVEL 1");

