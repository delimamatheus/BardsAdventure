// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function removeItemsInventory(item, amount, sprite){
	var _grid = oInventory.grid_items;
	var _check = 0;
	
	while(_grid[# INFOS.ITEM, _check] != item){
		_check++;
	}
	
	_grid[# INFOS.ITEM, _check] = -1;
	_grid[# INFOS.AMOUNT, _check] = -1;
	_grid[# INFOS.SPRITE, _check] = -1;
}