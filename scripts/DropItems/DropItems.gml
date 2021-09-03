// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DropItems(x, y, items){
	var _items = array_length_1d(items);
	
	if(_items > 1){
		var _anglePerItem = 360/_items;
		var _angle = random(360);
		for (var i = 0; i < _items; i++){
			with (instance_create_layer(argument0, argument1, "Instances", argument2[i])){
				direction = _angle;
				spd = 0.75 + (_items * 0.1) + random(0.1);
			}
			_angle += _anglePerItem;
		}
	}else instance_create_layer(argument0, argument1, "Instances", argument2[0]);
	
}