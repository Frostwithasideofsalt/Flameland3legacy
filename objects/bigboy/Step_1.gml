

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
			x=x+Espeed
if (place_meeting(x+Espeed,y,BLOCK))
{
	Espeed=Espeed*-1
	image_xscale=image_xscale*-1
}
if !place_meeting(x,y+Efall,BLOCK)
{
	y=y+Efall
	Efall=Efall+.3
}
if place_meeting(x,y+Efall,BLOCK)
{
	Efall=1
}
if !place_meeting(x,y+1,BLOCK)
{
	y=y+1
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
	sprite_index=bigkill
	y=y+DR
	DR=DR+.2
	
	x=x-((Espeed)*image_xscale)
	image_angle=image_angle-(Espeed*3)
if DR>15
	{
		instance_destroy()
	}
}