draw_set_alpha(100);
draw_set_colour(c_white);
draw_text(view_xport[0], view_yport[0] + 100, "Dash Cd " + string(tpCd));
draw_healthbar(100, 700, 300, 730, pc, c_black, c_red, c_lime, 0, true, true)

draw_healthbar(100, 100, 300, 150, tpCd, c_black, c_gray, c_white, 90, true, true)
draw_text(300,40,global.secWeb);

if global.secWeb == 0
{
	draw_sprite(sprIconDash,0,936,0)
}
else if global.secWeb == 1
{
	draw_sprite(sprIconShield,0,936,0)
}
else 
{
	draw_sprite(sprIconBase,0,936,0)	
}

