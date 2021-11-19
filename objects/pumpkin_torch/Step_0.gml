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
Time=Time-1
Time2=Time2-1
if Time<1 and place_meeting(x,y,VeiwPort)
{
	Time=200
	Time2=40
	instance_create_layer(x,y,"Instances",fire_bullet)
}
//animation
if Time2<1
{
	sprite_index=FR_PK
}
if Time2>1
{
	sprite_index=FR_PK_attack
}
//Bekil
if Al=2
{
	sprite_index=FR_PK_KILL
	y=y+DR
	DR=DR+.2
if DR>15
	{
		instance_destroy()
	}
}