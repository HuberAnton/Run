/// @description Insert description here
// You can write your code in this editor

if(global.activePlatforms <= random_range(0, global.activePlatforms))
{

repeat(irandom_range(1, 5))
{
	var temp = instance_create_layer(room_width + 32,irandom_range(160, room_height-100),"Instances",obj_spawner_platform);
	
	temp.platformsToCreate = irandom_range(2, 12);
	
	temp.makePlatforms = true;
	global.activePlatforms++;
}

}
// Choose platforms to spawn

// Don's spawn platforms within 1 space of each other.



// Choose to stop spawning ground