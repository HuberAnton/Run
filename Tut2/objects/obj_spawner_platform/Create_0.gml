/// @description Insert description here
// You can write your code in this editor

// If yes will make platforms
makePlatforms = true;

// Number of platfroms to create
// Passed in by controller(hopefully)
platformsToCreate = 5;
// Count of platforms created so far.
createdPlatforms = 0;

if(!place_empty(x,y,obj_spawner_platform))
{
	show_debug_message("Double");	
	global.activePlatforms--;
	instance_destroy();
}