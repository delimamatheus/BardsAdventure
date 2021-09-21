/// @description Insert description here
// You can write your code in this editor
var _guiWidth = display_get_gui_width();
var _guiHeight = display_get_gui_height();
var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);

if (inventoryOpen == true){
	var _invX = _guiWidth/2 - inventoryWidth/2;
	var _invY = _guiHeight/2 - inventoryHeight/2;
	draw_sprite_ext(sInventory,0,_invX,_invY,scale,scale,0,c_white,1);
}