if place_meeting(x,y,Player) and state=0
{
	XS=x
	YS=y
	state=1
}
if state=1
{
	if Pl=1
	{
		sprite_index=checkpoint_on_flame
	}
	if Pl=2
	{
		sprite_index=checkpoint_on_frost
	}
	if Pl=3
	{
		sprite_index=checkpoint_on_rose
	}
}