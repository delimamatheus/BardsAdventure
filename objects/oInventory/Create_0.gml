/// @description Insert description here
// You can write your code in this editor
inventoryOpen = false;
scale = 0.5;

startX = 15 * scale;
startY = 24 * scale;

hSlots = 12;
vSlots = 3;
totalSlots = hSlots * vSlots;
slotSize = 16 * scale;
buffer = 1 * scale;

inventoryWidth = sprite_get_width(sInventory) * scale;
inventoryHeight = sprite_get_height(sInventory) * scale;