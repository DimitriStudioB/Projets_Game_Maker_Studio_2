///Controles

moove_speed=8;
image_angle=point_direction(x,y,mouse_x,mouse_y);

if (speed_bounce>=0)
{
	speed=speed_bounce;
	speed_bounce=speed_bounce-1;
}

///Mouvements

if (keyboard_check(moove_up))
{
	y=y-moove_speed;
}
if (keyboard_check(moove_down))
{
	y=y+moove_speed;
}
if (keyboard_check(moove_right))
{
	x=x+moove_speed;
}
if (keyboard_check(moove_left))
{
	x=x-moove_speed;
}

///Tir

if (mouse_check_button(mb_left)) && (cooldown1<1)
{
	instance_create_layer(x,y,"BulletsLayer",object_Bullets1);
	cooldown1=5;
}

cooldown1=cooldown1-1;

if (mouse_check_button(mb_right)) && (cooldown2<1)
{
	instance_create_layer(x,y,"BulletsLayer",object_HE_Grenades);
	cooldown2=700;
}

cooldown2=cooldown2-1;



if (hp_player<=0)
{
	instance_destroy();
	game_end();
}