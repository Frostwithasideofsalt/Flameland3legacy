round(y)

 Y=y
 X=x
key_left=gamepad_button_check(0,gp_padl)
key_right=gamepad_button_check(0,gp_padr)
key_jump=gamepad_button_check(0,gp_face1)

//CAL
var move = key_right-key_left;

hsp=move*iceblock*walksp;
vsp=vsp+grv

if(place_meeting(x,y+1,BLOCK)) and (key_jump)
{
vsp=-8
audio_play_sound(SJump,1001,false)
}
if(place_meeting(x,y+1,SemiSolid)) and (key_jump)
{
vsp=-8
}

if(place_meeting(x+hsp,y,BLOCK)) and (key_jump) and (Pl2=2) and (T2>1)
{
vsp=-8
T2=T2-2
}
if(place_meeting(x+hsp,y,BLOCK)) and (Pl2=2) and (T2>2)
{
Walljump=1
}
if(!place_meeting(x+hsp,y,BLOCK))
{
Walljump=0
}
//Hcol

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

//anime is for weebs
X=x Y=y
if (!key_left = 0) and (!key_right = 0)
{
walksp=0
Anime=4
}
//Flame animation
if ((!key_left = 0) and (Anime<8) or (!key_right=0) and (Anime<8)) and (Pl2=1) and firecrash=0   
{
sprite_index=sprite1
}
if ((!key_left = 0) and (Anime>8) or (!key_right=0) and (Anime>8)) and (Pl2=1) and firecrash=0
{
sprite_index=FlameDAsh
}
if ((key_left = 0) and (key_right = 0) and (cd<1) and (CL<2) and (SA=0)) and (Pl2=1) and firecrash=0 and (place_meeting(x,y+1,BLOCK)) 
{
sprite_index=Flamestill
}
if ((key_left = 0) and (key_right = 0) and (cd<1) and (CL<2) and (SA=0)) and (Pl2=1) and firecrash=0 and (!place_meeting(x,y+1,BLOCK))
{
sprite_index=Ffall
}
if SA=1 and firecrash=0
{
	sprite_index=sprite45
}
if firecrash=1 and Pl2=1
{
	
sprite_index=sprite136
god2=3
if place_meeting(x,y+vsp,BLOCK) or (vsp<4)
{

	firecrash=0
	
}
}
//Frost animation
if ((!key_left = 0) and (Anime<8) or (!key_right=0) and (Anime<8)) and (Pl2=2) and (Walljump=0) and (RL<2) 
{
sprite_index=Fwalk
}
if ((!key_left = 0) and (Anime>8) or (!key_right=0) and (Anime>8)) and (Pl2=2) and (Walljump=0) and (RL<2)
{
sprite_index=Frun
}
if ((key_left = 0) and (key_right = 0) and (cd<1) and (CL<2) and (SA=0)) and (Pl2=2) and (Walljump=0) and (RL<2)  
{
sprite_index=Fstill
}
if ((key_left = 0) and (key_right = 0) and (cd<1) and (CL<2) and (SA=0)) and (Pl2=2) and (Walljump=0) and (RL<2)  and (!place_meeting(x,y+1,BLOCK))
{
sprite_index=Frfall
}
if SA=1 and (Walljump=0)
{
	sprite_index=Fattack
}
if (Walljump=1) and (Pl2=2)
{
	sprite_index=Fwall
}
//Rose animation 
if ((!key_left = 0) and (Anime<8) or (!key_right=0) and (Anime<8)) and (Pl2=3)  and (RL<2)  
{
sprite_index=Rwalk
}
if ((!key_left = 0) and (Anime>8) or (!key_right=0) and (Anime>8)) and (Pl2=3)  and (RL<2)
{
sprite_index=Rrun
}
if ((key_left = 0) and (key_right = 0) and (cd<1) and (CL<2) and (SA=0)) and (Pl2=3)  and (RL<2)  and (place_meeting(x,y+1,BLOCK))
{
sprite_index=Rstill
}
if ((key_left = 0) and (key_right = 0) and (cd<1) and (CL<2) and (SA=0)) and (Pl2=3)  and (RL<2)  and (!place_meeting(x,y+1,BLOCK))
{
sprite_index=Rfall
}
if SA=1
{
	sprite_index=Rattack
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
if (walksp>9) and (Pl2=2)
{
walksp=9
}
if (walksp>6) and (Pl2=3)
{
walksp=6
}
if (walksp>12) and (Pl2=1)
{
walksp=12
}
if (walksp<6)
{
	Anime=walksp
}
if (CL>1) and (Pl2=1)
{
	sprite_index=atak
}
if (CL>1) and (Pl2=2)
{
	sprite_index=Fattack
}
if (CL>1) and (Pl2=3)
{
	sprite_index=Rattack
}

