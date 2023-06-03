// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function flow(from, to, duration, offset, time){

/// @desc wave(from, to, duration, offset, time)
/// @arg from
/// @arg to
/// @arg duration
/// @arg offset
/// @arg time

var _wave = (to - from) * 0.5;

return from + _wave + sin((((time * 0.001) + duration * offset) / duration) * (pi * 2)) * _wave;


}