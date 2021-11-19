if (Pp=0)
{
sprite_index=options_PP_off
window_set_size(1024,786)
}
if (Pp=1)
{
		sprite_index=options_PP_on
		window_set_size(512,393)
}
if s=1 or s=3
{
	image_alpha=.5
}
if s=2
{
	image_alpha=1
}