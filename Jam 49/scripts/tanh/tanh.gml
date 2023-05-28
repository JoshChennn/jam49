// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function tanh(value){

	var euler = 2.71828;
	return (power(euler, value) - power(euler, -value)) / (power(euler, value) + power(euler, -value));

}