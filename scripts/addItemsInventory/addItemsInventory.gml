function addItemsInventory(item, amount, sprite){
	var _grid = oInventory.grid_items;
	var _check = 0;
	
	while(_grid[# INFOS.ITEM, _check] != -1){
		_check++;
	}
	
	_grid[# INFOS.ITEM, _check] = item;
	_grid[# INFOS.AMOUNT, _check] = amount;
	_grid[# INFOS.SPRITE, _check] = sprite;
}