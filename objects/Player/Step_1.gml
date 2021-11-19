
if (place_meeting(x,y,watertile)) or Firefall=1
{
	grv=0.1
}
if (!place_meeting(x,y,watertile) and(!place_meeting(x,y,oil))) and Firefall=0
{
	grv=0.4
}
if (hp<1) and (de2=0)
{
	if Life_count>0
	{
	deadx=x
	Life_count=Life_count-1
	deady=y
	de=100
	T=0
	instance_create_layer(x,y,"Instances_1",Pdead)
	de2=1
	image_alpha=0
	}
	if Life_count<1
	{
		Life_count=3
		room_goto(debug2)
	}
}
if (hp<1) and (de2=1)
{
	x=deadx
	y=deady
	vsp=0
	T=0
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
	hp=6
	T=0
	x=XS
	y=YS
	de2=0
}
	
if (god>0) and de2=0
{
	image_alpha=.5
	god=god-1
}
if (!god>0)and de2=0
{
	image_alpha=1
}
if (place_meeting(x,y,hurt))and(god<1)
{
god=60
hp=hp-1
//Dash FF

}
if (keyboard_check_pressed(vk_down)and (key_left=1)and (T>2) and ((Pl=1) or (Pl=2))) and walksp<32
{
god=5
walksp=32
T=T-3
	Anime=8
	audio_play_sound(Sdash,1001,false)
}
if (keyboard_check_pressed(vk_down)and (key_right=1)and (T>2) and ((Pl=1) or (Pl=2))) and walksp<14
{
	god=5
walksp=32
T=T-3
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
if (keyboard_check_pressed(vk_space) and (T>0) and (CL<2))
{
	sprite_index=atak
	instance_create_layer(x,y,"Instances_1",rng)
	T=T-1
	audio_play_sound(Sshoot,1001,false)
	CL=38
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
if (keyboard_check_pressed(vk_shift) and (T>0) and (RL<2) and Pl=3)
{
	sprite_index=Rwalk1
	instance_create_layer(x,y,"Instances_1",ALTattack)
	T=T-1
    RL=30
}
RL=RL-1
if((keyboard_check(vk_down) and((key_right=1)or (key_left=1)) and (Pl=3)))
{
spin=4
T=0
while spin>1
{
	spin=spin-1
	walksp=walksp*1.1
	sprite_index=SPin
	RL=20
}
}
//frostpower
if (keyboard_check_pressed(vk_shift) and (T>1) and (RL<1) and (Pl=2))
{
	sprite_index=Fthrow
	instance_create_layer(x,y-05,"Instances_1",ALTattack)
	T=T-2  
	RL=38
	
}
//Flamepower
if Pl=1
{
if (keyboard_check_pressed(vk_shift) and (T>1) and (CL<2) and place_meeting(x,y+1,BLOCK))
{
	sprite_index=atak
	instance_create_layer(x,y-05,"Instances_1",ALTattack)
	T=T-3  
	CL=38
}
if keyboard_check_pressed(vk_down) and keyboard_check_pressed(vk_up)  and !(key_right=1 or key_left=1)
{
	vsp=8
	firecrash=1
}
if place_meeting(x,y+1,BLOCK)
{
	 Firefall=0
}
}
//movplat
if(place_meeting(x+hsp,y,Sp2)) 
{
walksp=walksp*(-1.5)
}

//pause
