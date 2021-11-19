image_xscale=Dir
if Time>1
{
	x=x+(5*Dir)
	Time=Time-1
}
if Time<2
{
	if (Y=1)
	{
	sprite_index=fireburst
	}
	if (Y=2)
	{
	sprite_index=iceburst
	}
	if (Y=3)
	{
	sprite_index=fireburst
	}
	Time2=Time2-1
	if (Time2<2)
	{
		instance_destroy()
	}
}