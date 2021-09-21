// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RoomToAreaName(_room){
	switch(_room){
		case rVillage: return "Bard's Home"; break;
		case rRiver: return "River Path"; break;
		case rCave: return "Cave"; break;
		case rFarm: return "Farm"; break;
		case rCity: return "Village"; break;
		case rShop: return "Shop"; break;
		default: return "Unknown Area"; break;
	}
}