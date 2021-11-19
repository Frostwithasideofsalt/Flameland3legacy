y=y+FALL

FALL=FALL+.4


if place_meeting(x,y+(FALL/2),BLOCK)
{
	instance_destroy()
	instance_create_layer(x,y,"Instances_1",Droplet1)
}
if (place_meeting(x,y,Player2) and (god2<1))
	{
	god2=60
	hp2=hp2-1
	}
	