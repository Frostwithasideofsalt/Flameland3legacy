if Mode=0
{
if(keyboard_check_pressed(vk_down)=1)
{
	select=select+1
}
if(keyboard_check_pressed(vk_up)=1)
{
	select=select-1
}
}