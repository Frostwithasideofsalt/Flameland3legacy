//endside
if screencustom=0
{
if (Player.x>room_width-256)
{
x=room_width-256
}
if (Player.y>room_height-185)
{
	y=room_height-185
}
//paralax 

if (Player.x>256)and (Player.x<room_width-256)
{
x=Player.x
}
if (Player.y>195) and (Player.y<room_height-185)
{
y=Player.y
}
//sideclip fix
if (Player.x<256)
{
x=256
}
if (Player.y<195)
{
	y=196
}
//endside
if (Player.x>room_width-256)
{
x=room_width-256
}
if (Player.y>room_height-185)
{
	y=room_height-190
}
}
//paralax 
//note: the tree layers and cloud layer only go X, but Cloud2 goes both x and y
if (layer_exists("Trees"))
{
	layer_x("Trees",x/1.5)
}
if (layer_exists("Trees2"))
{
	layer_x("Trees2",x/1.5)
}
if (layer_exists("Trees3"))
{
	layer_x("Trees3",x/1.4)
}

if (layer_exists("Cloud"))
{
	layer_x("Cloud",x/1.25)
}
if (layer_exists("Cloud2"))
{
	layer_x("Cloud2",x/1.25)
	layer_y("Cloud2",y/1.25)
}
if (layer_exists("Cloud4"))
{
	layer_x("Cloud4",x/1.4)
	layer_y("Cloud4",y/1.4)
}
if (layer_exists("Still"))
{
	layer_x("Still",x)
	layer_y("Still",y)
}
if (layer_exists("Still2"))
{
	layer_x("Still2",x-50)
	
}
if (layer_exists("Still3"))
{
	layer_x("Still3",x+30)
	layer_y("Still3",y-30)
}
if (layer_exists("Cloud3"))
{
	layer_x("Cloud3",(x/1.25)+cloud)
	layer_y("Cloud3",(y/1.25))
}
if (layer_exists("Cloud3"))
{
	layer_x("Cloud3",(x/1.25)+cloud)
	layer_y("Cloud3",(y/1.25))
}
if (layer_exists("Pillar"))
{
	layer_x("Pillar",x/1.5)
	layer_y("Pillar",y/1.5)
}
if (layer_exists("Pillar2"))
{
	layer_x("Pillar2",x/1.5)
	layer_y("Pillar2",y/1.5)
}
if (layer_exists("Close"))
{
	layer_x("Close",x/1.1)
	layer_y("Close",y/1.1)
}
//X movement
if (layer_exists("layer1"))
{
	layer_x("layer1",x/1.1)
}
if (layer_exists("layer2"))
{
	layer_x("layer2",x/1.2)
}
if (layer_exists("layer3"))
{
	layer_x("layer3",x/1.3)
}
if (layer_exists("layer4"))
{
	layer_x("layer4",x/1.4)
}
if (layer_exists("layer0"))
{
	layer_x("layer0",x/1.4)
}
///hudpos
HP.x=x-225
HP.y=y-170
ENG.x=x-225
ENG.y=y-170
LIVES_1.x=x-220
LIVES_1.y=y-150
if room=Nboss
{
HPBoss.x=x+200
HPBoss.y=y-190
}