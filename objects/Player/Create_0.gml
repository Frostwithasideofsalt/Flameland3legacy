instance_create_layer(x+100,y-135,"Instances_1",VeiwPort)
instance_create_layer(x,y,"Instances",afterimage)
key_left=keyboard_check(vk_left)
key_right=keyboard_check(vk_right)
key_jump=keyboard_check_pressed(vk_up)
vsp=0;
Firefall=0;
JumpH=5
hsp=0;
firecrash=0;
grv=0.4;
PauseVar=0
walksp=4;
spin=0;
de2=0
Anime=0
Y=0
X=0
cd=0
RL=0
iceblock=0
Walljump=0
CL=0
SA=0
god=0
PD=image_xscale
globalvar god
globalvar PD
globalvar SA
globalvar YS
globalvar XS
globalvar Pl
globalvar hp;
XS=x
YS=y
if Mpl=1
{
	instance_create_layer(x,y,"Instances",Player2)
}
