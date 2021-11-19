

if Al=1 
{
	if (place_meeting(x,y,Player) and (god<1)) and (Player.vsp=0)
	{
	god=60
	hp=hp-1
	}
		if (place_meeting(x,y,Player) and (Player.vsp >1))
		{
		Al=2
		Player.vsp=-6
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

}
//Bekil
if Al=2
{
	sprite_index=rred
	y=y+DR
	DR=DR+.2
if DR>15
	{
		instance_destroy()
	}
}