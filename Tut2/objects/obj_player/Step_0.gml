/// @description Player Movement and interaction Per Frame?
// You can write your code in this editor

player_rotation_speed = 3;
player_movement_speed = 0.05;
player_breaking_speed = 0.02;

if(keyboard_key_press(vk_left))
{
	image_angle += player_rotation_speed; 
}

if(keyboard_key_press(vk_right))
{
	image_angle -= player_rotation_speed;
}

if(keyboard_key_press(vk_up))
{
	motion_add(image_angle, player_movement_speed)
}

if(keyboard_key_press(vk_down))
{
	motion_add(image_angle, player_breaking_speed)
}