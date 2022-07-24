
round(y)
//bftest01
 Y=y
 X=x
key_left=keyboard_check(vk_left)
key_right=keyboard_check(vk_right) 
key_jump=keyboard_check(vk_up) 

//CAL
var move = key_right-key_left;

hsp=move*iceblock*walksp;
vsp=vsp+grv

if(place_meeting(x,y+1,BLOCK)) and (key_jump)
{
vsp=-2
if !place_meeting(x,y,water)
{
JumpH=12
}
audio_play_sound(SJump,1001,false)
}
if key_jump=1 and JumpH>0
{
	vsp=-5
	JumpH=JumpH-1
}
if key_jump=0
{
	JumpH=0
}
if(place_meeting(x,y+1,SemiSolid)) and (key_jump)
{
vsp=-8
}
if(place_meeting(x,y,watertile)) and (key_jump) and Pl=2 and !(place_meeting(x,y+1,BLOCK))
{
vsp=-5
}

if(place_meeting(x+hsp,y,BLOCK)) and (key_jump) and (Pl=2) and (T>1)
{
vsp=-8
T=T-2
}
if(place_meeting(x+hsp,y,BLOCK)) and (Pl=2) and (T>2)
{
Walljump=1
}
if(!place_meeting(x+hsp,y,BLOCK))
{
Walljump=0
}
//Hcol
if walksp<4
{
	walksp=4
}
if (place_meeting(x+hsp,y,BLOCK))
{
	while(!place_meeting(x+sign(hsp),y,BLOCK))
	{
		x=x+sign(hsp)
	}
	
	hsp=0;
	walksp=4;
	
}
x=x+hsp;
//Vcol
if (place_meeting(x,y+vsp,BLOCK))
{
	while(!place_meeting(x,y+sign(vsp),BLOCK))
	{
		y=y+sign(vsp)
	}
	
	vsp=0;
	
}
if (place_meeting(x,y+vsp,SemiSolid) and (vsp>0))
{
	while(!place_meeting(x,y+sign(vsp),SemiSolid))
	{
		y=y+sign(vsp)
	}
	
	vsp=0;
	
}
y=y+vsp;

//walking stuff
X=x Y=y
if (!key_left = 0) and (!key_right = 0)
{
walksp=0
Anime=4
}
//Flame animation
if Firefall=1
{
sprite_index=Dropcrash
}
if Pl=1
{
if ((key_left = 1) or(key_right=1) and (vsp<8))and firecrash=0 and Firefall=0
{
sprite_index=sprite1
}
if ((!key_left = 0) and (Anime>8) or (!key_right=0) and (Anime>8)) and  firecrash=0 
{
	
sprite_index=FlameDAsh
}
if ((key_left = 0) and (key_right = 0) and (cd<1) and (CL<2) and (SA=0)) and firecrash=0 and (place_meeting(x,y+1,BLOCK)) and Firefall=0
{
	if !(place_meeting(x,y+1,watertile))
	{
sprite_index=Flamestill
	}
	if (place_meeting(x,y+1,watertile))
	{
		
sprite_index=FlamestillWATER
	}
	if (place_meeting(x,y+1,watertile)) 
	{
		ENG.FC=ENG.FC-.5
	}
}
if ((key_left = 0) and (key_right = 0) and (cd<1) and (CL<2) and (SA=0))  and firecrash=0 and (!place_meeting(x,y+1,BLOCK)) and Firefall=0
{
sprite_index=Ffall
}
if SA=1 and firecrash=0
{
	sprite_index=sprite45
}
if firecrash=1 
{
	instance_create_layer(x,y,"Instances_1",Flame1)
sprite_index=sprite136
god=3
if keyboard_check(vk_shift) and Firefall=0
	{
		firecrash=0
		vsp=-4
		Firefall=1
	}
if place_meeting(x,y+vsp,BLOCK) or (vsp<4)
{
instance_create_layer(x,y,"Instances_1",Flame2)
	firecrash=0

}
}
}
//Frost animation
if ((!key_left = 0) and (Anime<8) or (!key_right=0) and (Anime<8)) and (Pl=2) and (Walljump=0) and (RL<2) 
{
sprite_index=Fwalk
}
if ((!key_left = 0) and (Anime>8) or (!key_right=0) and (Anime>8)) and (Pl=2) and (Walljump=0) and (RL<2)
{
sprite_index=Frun
}
if ((key_left = 0) and (key_right = 0) and (cd<1) and (CL<2) and (SA=0)) and (Pl=2) and (Walljump=0) and (RL<2)  
{
sprite_index=Fstill
}
if ((key_left = 0) and (key_right = 0) and (cd<1) and (CL<2) and (SA=0)) and (Pl=2) and (Walljump=0) and (RL<2)  and (!place_meeting(x,y+1,BLOCK))
{
sprite_index=Frfall
}
if SA=1 and (Walljump=0)
{
	sprite_index=Fattack
}
if (Walljump=1) and (Pl=2)
{
	sprite_index=Fwall
}
//Rose animation 
if ((!key_left = 0) and (Anime<8) or (!key_right=0) and (Anime<8)) and (Pl=3)  and (RL<2)  
{
sprite_index=Rwalk
}
if ((!key_left = 0) and (Anime>8) or (!key_right=0) and (Anime>8)) and (Pl=3)  and (RL<2)
{
sprite_index=Rrun
}
if ((key_left = 0) and (key_right = 0) and (cd<1) and (CL<2) and (SA=0)) and (Pl=3)  and (RL<2)  and (place_meeting(x,y+1,BLOCK))
{
	if !(place_meeting(x,y+1,watertile))
	{
sprite_index=Rstill
	}
	if (place_meeting(x,y+1,watertile))
	{
		
sprite_index=RstillWATER
	}
}
if ((key_left = 0) and (key_right = 0) and (cd<1) and (CL<2) and (SA=0)) and (Pl=3)  and (RL<2)  and (!place_meeting(x,y+1,BLOCK))
{
sprite_index=Rfall
}
if SA=1
{
	sprite_index=Rattack
}
if (place_meeting(x,y+1,watertile)) and Pl=3
{
		ENG.FC=ENG.FC+1
		}



//endoffrost
if (!key_left = 0)
{
	image_xscale=-1
}
if (!key_right = 0)
{
	image_xscale=1
}
if (key_left=1) or (key_right=1)
{
walksp=walksp+.015
Anime=Anime+.03
}
if (!key_left=1) and (!key_right=1)
{
walksp=4
}
if (walksp>9) and (Pl=2)
{
walksp=9
}
if (walksp>6) and (Pl=3)
{
walksp=6
}
if (walksp>12) and (Pl=1)
{
walksp=12
}
if (walksp<6)
{
	Anime=walksp
}
if (CL>1) and (Pl=1)
{
	sprite_index=atak
}
if (CL>1) and (Pl=2)
{
	sprite_index=Fattack
}
if (CL>1) and (Pl=3)
{
	sprite_index=Rattack
}

