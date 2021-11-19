y=y+FALL
if falling=1
{
FALL=FALL+.4
}
if (Player.x<x+36) and (Player.x>x-36) and (Player.y>y)
{
	falling=1
}
if place_meeting(x,y+(FALL/2),BLOCK)
{
	instance_destroy()
	instance_create_layer(x,y,"Instances_1",falling_ice_broken)
}
if (place_meeting(x,y,Player2) and (god2<1))
	{
	god2=60
	hp2=hp2-1
	}