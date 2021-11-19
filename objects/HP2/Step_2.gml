x=VeiwPort.x+225
y=VeiwPort.y-170
instance_create_layer(x+100,y-135,"Instances_1",Hudicon)instance_create_layer(x+100,y-135,"Instances_1",Hudicon)
if hp2<3 and T2=6
{
	regen=regen-1
	if regen<1
	{
	regen=801
	hp2=hp2+1
}
}