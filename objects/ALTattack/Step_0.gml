if Y=3
{
	image_angle=image_angle-20
x=x+(angle*Dir)
y=y+vspeed
vspeed=vspeed+.2
Time=Time-1
if Time<1
{
	instance_destroy()
}
}
//ice
if Y=2
{
image_angle=image_angle+3
image_index=icebomb
x=x+(2*Dir)
y=y+vspeed
vspeed=vspeed+.3
Time=Time-1
if Time<1
{
	instance_destroy()
	
}
if place_meeting(x+2*Dir,y,BLOCK)
{
	Dir=Dir*-1
	
}
if place_meeting(x,y+vspeed,BLOCK)
{
	
	vspeed=-2
}
}
//pyro
if Y=1
{
x=x+(13*Dir)
y=y
Time=Time-1
if Time<1
{
	instance_destroy()
}
}