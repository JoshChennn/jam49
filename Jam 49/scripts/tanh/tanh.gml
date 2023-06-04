// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function tanh(value){
	//exp() is the same as what you were doing, e^value
	return (exp(value) - exp(-value)) / (exp(value) + exp(-value));

}