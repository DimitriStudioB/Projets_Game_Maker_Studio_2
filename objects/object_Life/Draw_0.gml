if(global.choix==1)
{
	var cx=camera_get_view_x(view_camera[0]);
	var cy=camera_get_view_y(view_camera[0]);
	var cw=camera_get_view_width(view_camera[0]);
	var txt_life="Sante : " + string(object_Player1.hp_player);

	draw_set_font(Police_Score);
	draw_set_colour(c_white);
	draw_text(cx+cw/1.5,cy+135, txt_life);
}

if(global.choix==2)
{
	var cx=camera_get_view_x(view_camera[1]);
	var cy=camera_get_view_y(view_camera[1]);
	var cw=camera_get_view_width(view_camera[1]);
	var txt_life="Sante : " + string(object_Player2.hp_player);

	draw_set_font(Police_Score);
	draw_set_colour(c_white);
	draw_text(cx+cw/1.5,cy+135, txt_life);
}