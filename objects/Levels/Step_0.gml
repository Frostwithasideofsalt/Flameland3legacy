if Mode=1
if (vk_enter)=1
{
	Hold=1
}
if (vk_enter)=1
{
	Hold=0
}
{
if select=3
{
	sprite_index=L3
}
if select=2
{
	sprite_index=L2
}
if select=1
{
	sprite_index=L1
}
if select=4
{
	sprite_index=L4
}
if select=5
{
	sprite_index=L5
}
}

if Mode=0
{
if select=3
{
	sprite_index=w1level3
}
if select=2
{
	sprite_index=w1level2
}
if select=1
{
	sprite_index=w1level1
}
if select=4
{
	sprite_index=w1level4
}
if select=5
{
	sprite_index=w1level5
}
}
if keyboard_check_pressed(vk_enter) and Mode=0
{
	Mode=1
	CL=3
}
if keyboard_check_pressed(vk_enter) and Mode=1 and CL<1
{
	audio_pause_sound(Menumusic)
if select=2
{
	room_goto(Icelevel)
	XS=144
YS=672
if musicon=1
{
audio_play_sound(CCplaceholder,200,true)
}
}



if select=1
{
	room_goto(GrassLv)
	XS=144
YS=944
if musicon=1
{
audio_play_sound(FFplaceholder,200,true)
}
}


if select=3

{
	room_goto(Beach)
	XS=235
YS=288
if musicon=1
{
audio_play_sound(SSplaceholder,200,true)
}
}


if select=4

{
	room_goto(Airship)
	XS=144
YS=944
if musicon=1
{
audio_play_sound(StSPlaceholder,200,true)
}
}


if select=5

{
room_goto(Narcade)
XS=135
YS=330
if musicon=1
{
audio_play_sound(NNplaceholder,200,true)
}
}
}
if CL>0
{
CL=CL-1
}
