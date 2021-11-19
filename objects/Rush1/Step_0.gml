BS=image_xscale
y=y+Ym

if b>0
{
x=x+(Xm*image_xscale)
Ym=Ym+.3
sprite_index=Slimer
BC=4
}
if b<1
{
	if BC>1
	{
		if (place_meeting(x+Xm,y,BossBlock))
{
image_xscale=image_xscale*-1
}
Ym=0
sprite_index=Slimershoot
instance_create_layer(x,y-05,"Instances_1",Enemys1)
BC=BC-1
wait=40
	}
	if BC<2
	{
		wait=wait-1
	}
	if wait<1
	{
		b=3
	}
}
if b>0 and (place_meeting(x,y+Ym,BossBlock2))
{
	b=b-1
	Ym=-7
}
