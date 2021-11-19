if select=3
{
	room_goto(debug27)
}
if select=2
{
	if Mpl=0
	{
	room_goto(Pselect)
	}
	if Mpl=1
	{
	room_goto(PPselect)
	}
}
if select=1
{
	room_goto(roomhub2)
}
if select=4
{
	room_goto(option)
}