/// @description Insert description here
// You can write your code in this editor
//inventoryOpen = false;
scale = 1;

startX = 15 * scale;
startY = 24 * scale;

invX = 0;
invY = 0;

hSlots = 12;
vSlots = 3;
totalSlots = hSlots * vSlots;
slotSize = 16 * scale;
buffer = 1 * scale;

inventoryWidth = sprite_get_width(sInventory) * scale;
inventoryHeight = sprite_get_height(sInventory) * scale;

grid_items = ds_grid_create(INFOS.COUNTERINFOS,totalSlots);
ds_grid_set_region(grid_items, 0, 0, 1, totalSlots-1, -1);


//grid_items[# INFOS.ITEM, 1] = ITEMS.SLIMESDROP;
//grid_items[# INFOS.AMOUNT, 1] =3;
