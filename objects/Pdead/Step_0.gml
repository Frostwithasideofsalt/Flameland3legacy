y=y-(vsp/4)
vsp=vsp-1
Time=Time-1

if Time<1
{
	instance_destroy()
}
if Y=2
{
	sprite_index=FrKILL
}
if Y=3
{
	sprite_index=RKILL
}