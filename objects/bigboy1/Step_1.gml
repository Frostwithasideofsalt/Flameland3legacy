

if Al=1 or Al=2 or Al=3
{
	if (place_meeting(x,y,Player) and (god<1))
	{
	god=60
	hp=hp-1
	}
		if (place_meeting(x,y,rng) or place_meeting(x,y,ALTattack)) and CL<2 
		{
		Al=Al+1
		CL=50
		}
			
if (place_meeting(x,y,Player2) and (god2<1))
	{
	god2=60
	hp2=hp2-1
	}
if (place_meeting(x,y,Player) and (god<1))
{
god=60
hp=hp-1
}
CL=CL-1
}
//Bekil
if Al>3
{
	sprite_index=Tpolee1
	y=y+DR
	DR=DR+.2
	image_angle=image_angle-(6)
if DR>15
	{
		instance_destroy()
	}
}