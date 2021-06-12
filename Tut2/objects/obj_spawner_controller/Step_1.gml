/// @description Insert description here
// You can write your code in this editor

global.platformSpeed += 0.001;

actual_delta = delta_time/ 1000000;
global.delta_multiplier = actual_delta / target_delta;