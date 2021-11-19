x=x+xspeed
y=y+yspeed
Time2=Time2-1
	if (place_meeting(x,y,Player) and (god<1))
	{
	god=60
	hp=hp-1
	}
		if (place_meeting(x,y,Player2) and (god2<1))
	{
	god2=60
	hp2=hp2-1
	}
if Time2<1
{
	instance_destroy()
}