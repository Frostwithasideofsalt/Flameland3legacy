
if (place_meeting(x,y,watertile))
{
	grv=0.1
}
if (!place_meeting(x,y,watertile) and(!place_meeting(x,y,oil)))
{
	grv=0.4
}
if (hp2<1) and (de2=0)
{
	deadx=x
	
	deady=y
	de=100
	T2=0
	instance_create_layer(x,y,"Instances_1",Pdead)
	de2=1
	image_alpha=0
}
if (hp2<1) and (de2=1)
{
	x=deadx
	y=deady
	vsp=0
	T2=0
	de=de-1
	image_alpha=0
	if de<1
	{
		de2=2
	}
}
if de2=2
{
	image_alpha=1
	hp2=6
	T2=0
	x=XS
	y=YS
	de2=0
	
}
	
if (god2>0) and de2=0
{
	image_alpha=.5
	god2=god2-1
}
if (!god2>0)and de2=0
{
	image_alpha=1
}
if (place_meeting(x,y,hurt))and(god<1)
{
god2=60
hp2=hp2-1
//Dash FF

}
if((gamepad_button_check(0,gp_shoulderl) and (T2>2) and ((Pl2=1) or (Pl2=2))) and walksp<32) and !place_meeting(x,y,BLOCK)
{
god2=5
walksp=32
T2=T2-3
	Anime=8
	audio_play_sound(Sdash,1001,false)
}


//endofdashcode
PD=image_xscale

if vsp>30
{
	vsp=30
}
//flameattack
if (gamepad_button_check(0,gp_face2) and (T2>0) and (CL<2))
{
	sprite_index=atak
	instance_create_layer(x,y,"Instances_1",rng)
	T2=T2-1
	audio_play_sound(Sshoot,1001,false)
	CL=38
}
if (gamepad_button_check(0,gp_start))
{
	hp2=6
	T2=0
	y=Player.y
	de2=0
	x=Player.x
}

if (CL>1)
{
	CL=CL-1
}

if (place_meeting(x,y,ice))
{
iceblock=1.5
}
if (!place_meeting(x,y,ice))
{
iceblock=1
}
if (place_meeting(x,y,oil))
{
iceblock=0.25
}
if (place_meeting(x,y,oil))
{
	grv=0.6
}
//rosepower
if (gamepad_button_check(0,gp_shoulderr) and (T2>0) and (RL<2) and Pl2=3)
{
	sprite_index=Rwalk1
	instance_create_layer(x,y,"Instances_1",ALTattack)
	T2=T2-1
    RL=30
}
RL=RL-1
if((gamepad_button_check(0,gp_shoulderl) and((key_right=1)or (key_left=1)) and (Pl2=3)))
{
spin=4
T2=0
while spin>1
{
	spin=spin-1
	walksp=walksp*1.1
	sprite_index=SPin
	RL=20
}
}
//frostpower
if (gamepad_button_check(0,gp_shoulderr) and (T2>1) and (RL<1) and (Pl2=2))
{
	sprite_index=Fthrow
	instance_create_layer(x,y-05,"Instances_1",ALTattack)
	T2=T2-2  
	RL=38
	
}
//Flamepower
if (keyboard_check_pressed(vk_shift) and (T2>1) and (CL<2) and (Pl2=1))
{
	sprite_index=atak
	instance_create_layer(x,y-05,"Instances_1",ALTattack)
	T2=T2-3  
	CL=38
}
if (gamepad_button_check(0,gp_shoulderrb) and (Pl2=1) and !(key_right=1 or key_left=1))
{
	vsp=8
	firecrash=1
}

//movplat
if(place_meeting(x+hsp,y,Sp2)) 
{
walksp=walksp*(-1.5)
}
if(place_meeting(x,y+vsp,Sp2)) 
{
vsp=vsp*(-1.5)
}
if walksp<4
{
	walksp=4
}
