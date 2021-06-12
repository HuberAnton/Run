/// @description Player Movement and interaction Per Frame?
// You can write your code in this editor

// Inputs.

left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space);
up_hold = keyboard_check(vk_up) || keyboard_check(vk_space);
down = keyboard_check(vk_down);

// returns 1 if right, -1 if left and 0 if both.
var move = right - left;

horizonalSpeed = move * walkingSpeed; 


verticalSpeed += grav;

if(place_meeting(x,y+1, obj_platform) && up)
{
	verticalSpeed += -jumpspeed;	
}

else if(!place_meeting(x, y+1, obj_platform)  && !up_hold)
{
	verticalSpeed += verticalSpeedIncrease;
}



// Horizontal collsiion

if(place_meeting(x+horizonalSpeed,y,obj_platform))
{
	while(!place_meeting(x+sign(horizonalSpeed),y,obj_platform))
	{
			x += sign(horizonalSpeed);
	}
	horizonalSpeed = 0;
	
}

if(horizonalSpeed > horizontalTerminalVelocity)
{
	horizonalSpeed = horizontalTerminalVelocity;
}

if(horizonalSpeed < -horizontalTerminalVelocity)
{
	horizonalSpeed = -horizontalTerminalVelocity;
}


x += horizonalSpeed;

// Vertical collision

if(place_meeting(x,y+verticalSpeed,obj_platform))
{
	while(!place_meeting(x, y+sign(+verticalSpeed),obj_platform))
	{
			y += sign(verticalSpeed);
	}
	verticalSpeed = 0;
	
}

if(verticalSpeed > verticalTerminalVelocity)
{
	verticalSpeed = verticalTerminalVelocity;	
}


y += verticalSpeed;


//y += verticalSpeed;
