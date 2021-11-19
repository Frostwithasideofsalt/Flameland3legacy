y=y+5
if place_meeting(x,y,BLOCK)
{
	instance_destroy()
}
if (place_meeting(x,y,Player) and (god<1))
	{
	god=60
	hp=hp-2
}