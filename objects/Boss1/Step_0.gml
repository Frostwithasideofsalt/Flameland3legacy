if (place_meeting(x,y,Player) and (god<1))
	{
	god=60
	hp=hp-1
	}
if Bhp>0
{
BS=image_xscale
if place_meeting(x+(Xm*image_xscale),y,BLOCK)
{
image_xscale=image_xscale*-1
}
if Time>0
{
	Time=Time-1
	x=x+(Xm*image_xscale)
	sprite_index=bfor
	Time2=7
}
if Time<1
{
if Time2>0
{
	sprite_index=Bsoot
	instance_create_layer(x,y-05,"Instances_1",Enemys1)
}
Time2=Time2-1
}
if Time2<1
{
	Time=580
}
Time=Time-1
if (place_meeting(x,y,rng) or place_meeting(x,y,ALTattack)) and CL<2 
		{
		Bhp=Bhp-1
		CL=50
		}
		CL=CL-1
		if CL>0
		{
			image_alpha=.5
		}
		if CL<1
		{
			image_alpha=1
		}
}
//dead
if Bhp<1
{
	sprite_index=Bsoot1
	y=y+DR
	DR=DR+.2
if DR>15
	{
		instance_destroy()
		room_goto(debug2)
	}
}