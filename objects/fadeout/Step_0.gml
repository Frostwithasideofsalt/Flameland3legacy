a = clamp(a + (fade * 0.008),0,1);

if (a == 1)
{
    room_goto_next();
    fade = -1;
}

if (a == 0) && (fade == -1)
{
    instance_destroy();
}

draw_set_color(c_white);
draw_set_alpha(a);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);