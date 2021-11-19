if Player.walksp > 8
{
image_alpha=.5
}
if Player.walksp < 8
{
image_alpha=0
}
x=Player.x-Player.hsp
y=Player.y-Player.vsp
sprite_index=Player.sprite_index
image_xscale=Player.image_xscale