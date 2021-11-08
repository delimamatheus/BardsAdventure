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
			var _inst = 0;
			// Drop Item
			if(keyboard_check_pressed(ord("F"))) and (grid_items[# INFOS.ITEM, i] != -1){
				switch(grid_items[# INFOS.ITEM, i]){
					case ITEMS.SLIMESDROP:{
						if(grid_items[# INFOS.SPRITE, i] == sItems){
							_inst = instance_create_layer(oPlayer.x, oPlayer.y, "Instances", oSlimeDrop);
							_inst.sprite_index = grid_items[# INFOS.SPRITE, i];
							_inst.image_index = grid_items[# INFOS.ITEM, i];
							_inst.amount = grid_items[# INFOS.AMOUNT, i];
				
							grid_items[# INFOS.AMOUNT, i] -= 1;
					
							if(grid_items[# INFOS.AMOUNT, i] <= 0){
								grid_items[# INFOS.ITEM, i] = -1;
								grid_items[# INFOS.AMOUNT, i] = -1;
								grid_items[# INFOS.SPRITE, i] = -1;
						
							}
						}else if(grid_items[# INFOS.SPRITE, i] == sQuestItems){
							newTextBoxes("É um item de missão", 2);
						}
					}break;
					case ITEMS.BATDROP:{
						if (grid_items[# INFOS.SPRITE, i] == sItems){
							_inst = instance_create_layer(oPlayer.x, oPlayer.y, "Instances", oBatDrop);
							_inst.sprite_index = grid_items[# INFOS.SPRITE, i];
							_inst.image_index = grid_items[# INFOS.ITEM, i];
							_inst.amount = grid_items[# INFOS.AMOUNT, i];
				
							grid_items[# INFOS.AMOUNT, i] -= 1;
					
							if(grid_items[# INFOS.AMOUNT, i] <= 0){
								grid_items[# INFOS.ITEM, i] = -1;
								grid_items[# INFOS.AMOUNT, i] = -1;
								grid_items[# INFOS.SPRITE, i] = -1;
						
							}
						}else if (grid_items[# INFOS.SPRITE, i] == sQuestItems){
							newTextBoxes("Esse é um item de missão", 2);
						}
					}break;
				}
			}
			
			// Select with mouse
			if(mouse_check_button_pressed(mb_left)){
				if(selectedItem == -1){
					selectedItem = grid_items[# INFOS.ITEM, i];
					selectedPosition = i;
				}else{
					// Same items
					if(selectedItem == grid_items[# INFOS.ITEM, i]) and (selectedPosition != i) and grid_items[# INFOS.SPRITE, i] == grid_items[# INFOS.SPRITE, selectedPosition]{
						grid_items[# INFOS.AMOUNT, i] += grid_items[# INFOS.AMOUNT, selectedPosition]; 
						
						grid_items[# INFOS.ITEM, selectedPosition] = -1;
						grid_items[# INFOS.AMOUNT, selectedPosition] = -1
						selectedItem = -1;
						selectedPosition = -1;
					}else if(grid_items[# INFOS.ITEM, i] == -1){ // Null slot
						grid_items[# INFOS.ITEM, i] = grid_items[# INFOS.ITEM, selectedPosition];
						grid_items[# INFOS.AMOUNT, i] = grid_items[# INFOS.AMOUNT, selectedPosition];
						grid_items[# INFOS.SPRITE, i] = grid_items[# INFOS.SPRITE, selectedPosition];
						
						grid_items[# INFOS.ITEM, selectedPosition] = -1;
						grid_items[# INFOS.AMOUNT, selectedPosition] = -1;
						grid_items[# INFOS.SPRITE, selectedPosition] = -1;
						selectedItem = -1;
						selectedPosition = -1;
					}else if(grid_items[# INFOS.ITEM, selectedPosition] != grid_items[# INFOS.ITEM, i]) or (grid_items[# INFOS.SPRITE, selectedPosition] != grid_items[# INFOS.SPRITE, i]) { // Diff items
						var _item = grid_items[# INFOS.ITEM, i];
						var _amount = grid_items[# INFOS.AMOUNT, i];
						var _spriteItem = grid_items[# INFOS.SPRITE, i];
						
						grid_items[# INFOS.ITEM, i] = grid_items[# INFOS.ITEM, selectedPosition];
						grid_items[# INFOS.AMOUNT, i] = grid_items[# INFOS.AMOUNT, selectedPosition];
						grid_items[# INFOS.SPRITE, i] = grid_items[# INFOS.SPRITE, selectedPosition];
						
						grid_items[# INFOS.ITEM, selectedPosition] = _item;
						grid_items[# INFOS.AMOUNT, selectedPosition] = _amount;
						grid_items[# INFOS.SPRITE, selectedPosition] = _spriteItem;
						
						selectedItem = -1;
						selectedPosition = -1;
					}
				}
			}
		}
	
		_sprite = grid_items[# INFOS.SPRITE, i];
		if(grid_items[# INFOS.ITEM, i] != -1){
			// Sprite
			draw_sprite_ext(_sprite, grid_items[# INFOS.ITEM, i], slotX, slotY, scale, scale, 0, c_white, 1);
		
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
		draw_sprite_ext(grid_items[# INFOS.SPRITE, selectedPosition], selectedItem, _mouseX, _mouseY, scale,scale,0,c_white,0.5);
	}
}

