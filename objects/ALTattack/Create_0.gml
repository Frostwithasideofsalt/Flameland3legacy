if place_meeting(x,y,Player)
{
	Y=Pl
}
if place_meeting(x,y,Player2)
{
	Y=Pl2
}


if Y=3
{
Dir=PD
if (!keyboard_check(vk_down))
{
	angle=4
}
if (keyboard_check(vk_down))
{
	angle=2
}
vspeed=-4
Time=90
}
if Y=2
{
sprite_index=icebomb
Dir=PD
vspeed=-2
Time=120
}
if Y=1
{
sprite_index=superattack
Dir=PD
vspeed=0
Time=70
}
image_xscale=PD