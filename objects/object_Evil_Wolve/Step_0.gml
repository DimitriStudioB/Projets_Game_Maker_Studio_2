image_angle=direction;



if (instance_exists(object_Player1) || instance_exists(object_Player2))
{
	if (global.choix==1)
	{
		move_towards_point(object_Player1.x,object_Player1.y,spd);
	}
	if(global.choix==2)
	{
		move_towards_point(object_Player2.x,object_Player2.y,spd);
	}
}

if (hp<=0)
{
	with (object_Score) thescore=thescore+100;
	instance_destroy();
	
}

