if Al=1 
{
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
		if place_meeting(x,y,rng)or place_meeting(x,y,ALTattack)
		{
		Al=2
		}
}
//Bekil
if Al=2
{
	sprite_index=kill3
	y=y+DR
	DR=DR+.2
if DR>15
	{
		instance_destroy()
	}
}