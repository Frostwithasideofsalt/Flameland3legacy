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
//newbehav

if (Player.x<x+60) and (Player.x>x-60) and (state=0) and (Player.y<y+60) and (Player.y>y-60)
{
	state=1
	sprite_index=BURNER_attack
}

if state=1
{
	if Player.x+7>x
{
x=x+3

}
if Player.x-7<x
{
x=x-3
}
//Ymov
if Player.y+7>y
{
y=y+3
}
if Player.y-7<y
{
y=y-3
if Player.x>x
{
	image_xscale=-1
}
if Player.x<x
{
	image_xscale=1
}
}

}
if Al=2
{
	sprite_index=BURNER_dead
	y=y+DR
	DR=DR+.2
if DR>15
	{
		instance_destroy()
	}
}