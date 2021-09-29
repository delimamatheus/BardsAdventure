/// @description Insert description here
// You can write your code in this editor
var _guiWidth = display_get_gui_width();
var _guiHeight = display_get_gui_height();
var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);
var iX = 0;
var iY = 0;

var slotX = 0;
var slotY = 0;


if (global.inventoryOpen == true){
	invX = _guiWidth/2 - inventoryWidth/2;
	invY = _guiHeight/2 - inventoryHeight/2;
	draw_sprite_ext(sInventory,0,invX,invY,scale,scale,0,c_white,1);
	
	for(var i = 0; i < totalSlots; i++){
		slotX = invX + startX + ((slotSize + buffer) * iX);
		slotY = invY + startY + ((slotSize + buffer) * iY);
	
		if(point_in_rectangle(_mouseX,_mouseY,slotX,slotY,slotX+slotSize,slotY+slotSize)){
			draw_sprite_ext(sInventorySelector, 0, slotX, slotY, scale, scale,0, c_white, 1);
		
			if(mouse_check_button_pressed(mb_left)){
				if(selectedItem == -1){
					selectedItem = grid_items[# INFOS.ITEM, i];
					selectedPosition = i;
				}else{
					// Same items
					if(selectedItem == grid_items[# INFOS.ITEM, i]) and (selectedPosition != i){
						grid_items[# INFOS.AMOUNT, i] += grid_items[# INFOS.AMOUNT, selectedPosition]; 
						
						grid_items[# INFOS.ITEM, selectedPosition] = -1;
						grid_items[# INFOS.AMOUNT, selectedPosition] = -1
						selectedItem = -1;
						selectedPosition = -1;
					}else if(grid_items[# INFOS.ITEM, i] == -1){ // Null slot
						grid_items[# INFOS.ITEM, i] = grid_items[# INFOS.ITEM, selectedPosition];
						grid_items[# INFOS.AMOUNT, i] = grid_items[# INFOS.AMOUNT, selectedPosition];
						
						grid_items[# INFOS.ITEM, selectedPosition] = -1;
						grid_items[# INFOS.AMOUNT, selectedPosition] = -1
						selectedItem = -1;
						selectedPosition = -1;
					}else if(grid_items[# INFOS.ITEM, selectedPosition] != grid_items[# INFOS.ITEM, i]){ // Dif items
						var _item = grid_items[# INFOS.ITEM, i];
						var _amount = grid_items[# INFOS.AMOUNT, i];
						
						grid_items[# INFOS.ITEM, i] = grid_items[# INFOS.ITEM, selectedPosition];
						grid_items[# INFOS.AMOUNT, i] = grid_items[# INFOS.AMOUNT, selectedPosition];
						
						grid_items[# INFOS.ITEM, selectedPosition] = _item;
						grid_items[# INFOS.AMOUNT, selectedPosition] = _amount;
						
						selectedItem = -1;
						selectedPosition = -1;
					}
				}
			}
		}
	
		if(grid_items[# INFOS.ITEM, i] != -1){
			// Sprite
			draw_sprite_ext(sItems, grid_items[# INFOS.ITEM, i], slotX, slotY, scale, scale, 0, c_white, 1);
		
			// Amount
			draw_set_font(fText);
			draw_set_halign(fa_center);
			//draw_text_colour_outline(slotX+slotSize,slotY+slotSize-8,grid_items[# INFOS.AMOUNT, i], 4,c_black,16,100,100);
			draw_text(slotX+slotSize, slotY+slotSize-8,grid_items[# INFOS.AMOUNT, i]);
		}
	
		iX++;
		if(iX >= hSlots){
			iX = 0;
			iY++;
		}
	}
	
	if (mouse_check_button_pressed(mb_right)){
		selectedItem = -1;
		selectedPosition = -1;
	}
	
	if (selectedItem != -1){
		draw_sprite_ext(sItems, selectedItem, _mouseX, _mouseY, scale,scale,0,c_white,0.5);
	}
}

