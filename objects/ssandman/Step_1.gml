

if Al=1 or Al=2 or Al=3 or Al=4
{
	if (place_meeting(x,y,Player) and (god<1))
	{
	god=60
	hp=hp-1
	}
		if (place_meeting(x,y,rng)or place_meeting(x,y,ALTattack)) and CL<2
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
if(Time<1)
{
Time=20
instance_create_layer(x,y+20,"Instances_1",Steampuff)
}
Time=Time-1
//Bekil
if Al>4
{
	sprite_index=Skill
	y=y+DR
	x=x-Espeed
	x=x-((Espeed)*image_xscale)
	DR=DR+.2
if DR>15
	{
		instance_destroy()
	}
}