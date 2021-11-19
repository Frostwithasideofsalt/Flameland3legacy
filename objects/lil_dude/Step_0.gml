

if Al=1 
{
	if (place_meeting(x,y,Player) and (god<1))
	{
	god=60
	hp=hp-1
	}
		if place_meeting(x,y,rng) or place_meeting(x,y,ALTattack)
		{
		Al=2
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
if (place_meeting(x,y+Efall,BLOCK) and Efall>-1)
{
	Efall=-7
}
}
//Bekil
if Al=2
{
	sprite_index=jkill
	y=y+DR
	
	x=x-((Espeed)*image_xscale)
	DR=DR+.2
if DR>15
	{
		instance_destroy()
	}
}