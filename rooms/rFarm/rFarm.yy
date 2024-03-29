{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rFarm",
  "isDnd": false,
  "volume": 1.0,
  "parentRoom": {
    "name": "rParent",
    "path": "rooms/rParent/rParent.yy",
  },
  "views": [
    {"inherit":false,"visible":true,"xview":0,"yview":0,"wview":320,"hview":180,"xport":0,"yport":0,"wport":1280,"hport":720,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":{"name":"oPlayer","path":"objects/oPlayer/oPlayer.yy",},},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1024,"hview":768,"xport":0,"yport":0,"wport":1024,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1024,"hview":768,"xport":0,"yport":0,"wport":1024,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1024,"hview":768,"xport":0,"yport":0,"wport":1024,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1024,"hview":768,"xport":0,"yport":0,"wport":1024,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1024,"hview":768,"xport":0,"yport":0,"wport":1024,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1024,"hview":768,"xport":0,"yport":0,"wport":1024,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":true,"visible":false,"xview":0,"yview":0,"wview":1024,"hview":768,"xport":0,"yport":0,"wport":1024,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
  ],
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Text","instances":[],"visible":true,"depth":0,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5468AA2F","properties":[],"isDnd":false,"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.5,"scaleY":0.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":64.0,"y":16.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_52A15138","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetX","path":"objects/oRoomExit/oRoomExit.yy",},"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"value":"56",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetY","path":"objects/oRoomExit/oRoomExit.yy",},"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"value":"471",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetRoom","path":"objects/oRoomExit/oRoomExit.yy",},"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"value":"rCave",},
          ],"isDnd":false,"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.125,"scaleY":0.5625,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":70.0,"y":16.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2A16C0B1","properties":[],"isDnd":false,"objectId":{"name":"oPlayer","path":"objects/oPlayer/oPlayer.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":240.0,"y":94.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_650F4D3","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityNPC","path":"objects/pEntity/pEntity.yy",},"objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"value":"True",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateScript","path":"objects/pEntity/pEntity.yy",},"objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"value":"CollectDrum1",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityCollision","path":"objects/pEntity/pEntity.yy",},"objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"value":"True",},
          ],"isDnd":false,"objectId":{"name":"oBush","path":"objects/oBush/oBush.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":288.0,"y":17.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_2AB9BC2C","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"entityActivateScript","path":"objects/pEntity/pEntity.yy",},"objectId":{"name":"pEntity","path":"objects/pEntity/pEntity.yy",},"value":"DrumQuest",},
          ],"isDnd":false,"objectId":{"name":"oFerreiro","path":"objects/oFerreiro/oFerreiro.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":-1,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":147.0,"y":51.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_9C5BB22","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetX","path":"objects/oRoomExit/oRoomExit.yy",},"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"value":"224",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetY","path":"objects/oRoomExit/oRoomExit.yy",},"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"value":"148",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"targetRoom","path":"objects/oRoomExit/oRoomExit.yy",},"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"value":"rFarmHouse",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"transitionType","path":"objects/oRoomExit/oRoomExit.yy",},"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"value":"2",},
          ],"isDnd":false,"objectId":{"name":"oRoomExit","path":"objects/oRoomExit/oRoomExit.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":0.5,"scaleY":0.125,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":232.0,"y":78.0,},
      ],"visible":true,"depth":100,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"gridX":2,"gridY":2,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Col","tilesetId":{"name":"tCol","path":"tilesets/tCol/tCol.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":21,"SerialiseHeight":20,"TileCompressedData":[
-43,1,-11,0,-6,1,-2,0,-2,1,-11,0,-6,1,-2,0,-2,1,-11,0,-6,
1,-2,0,-2,1,-19,0,-2,1,-19,0,-2,1,-19,0,-2,1,-19,0,-2,1,
-2,0,-17,-2147483648,-2,1,-2,0,-17,-2147483648,-2,1,-2,0,-17,-2147483648,-2,1,-2,0,-17,
-2147483648,-2,1,-2,0,-17,-2147483648,-2,1,-2,0,-17,-2147483648,-2,1,-2,0,-17,-2147483648,-2,1,
-2,0,-17,-2147483648,-2,1,-2,0,-17,-2147483648,-2,1,-2,0,-17,-2147483648,-22,1,],},"visible":true,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesUpper","tilesetId":{"name":"tTilesForest","path":"tilesets/tTilesForest/tTilesForest.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":21,"SerialiseHeight":20,"TileCompressedData":[
-11,0,8,95,96,97,98,99,100,101,102,-13,0,8,157,158,159,160,161,162,163,
164,-13,0,7,281,282,283,284,285,286,287,-3,0,59,913,914,915,916,917,918,919,
906,907,908,906,343,344,345,346,347,348,349,350,0,0,975,976,977,978,979,980,981,
968,969,970,968,405,406,407,408,409,410,411,412,0,0,1037,1038,1039,1040,1041,1042,1043,
1030,1031,1032,1030,1031,1032,1033,1034,1035,1036,-4,0,15,1099,1100,1101,1102,1103,1104,1105,1092,
1093,1094,1092,1093,1094,1095,1096,-6,0,16,787,788,789,790,791,792,793,794,795,782,1154,
1155,1156,1157,1158,1159,-5,0,17,849,850,851,852,853,854,855,856,857,844,1216,1217,1218,
1219,1220,1221,1222,-4,0,185,911,912,913,914,915,916,917,918,919,906,1278,1279,1280,1281,
1282,1283,1284,1285,1286,0,0,973,974,975,976,977,978,979,980,981,968,1340,1341,1342,1343,
1344,1345,1346,1347,1348,0,0,1035,1036,1037,1038,1039,1040,1041,1042,1043,1030,1402,1403,1404,1405,
1406,1407,1408,1409,1410,0,0,1097,1098,1099,1100,1101,1102,1103,1104,1105,1092,1464,1465,1466,1467,
1468,1469,1470,1471,1472,0,0,1159,1160,1161,1162,1163,1164,1165,1166,1167,1154,1155,1156,1157,1158,
1159,1160,1161,1162,1163,0,0,1221,1222,1223,1224,1225,1226,1227,1228,1229,1216,1217,1218,1219,1220,
1221,1222,1223,1224,1225,0,0,1283,1284,1285,1286,1287,1288,1289,1290,1291,1278,1279,1280,1281,1282,
1283,1284,1285,1286,1287,0,0,1345,1346,1347,1348,1349,1350,1351,1352,1353,1340,1341,1342,1343,1344,
1345,1346,1347,1348,1349,0,0,1407,1408,1409,1410,1411,1412,1413,1414,1415,1402,1403,1404,1405,1406,
1407,1408,1409,-32,0,1,794,-5,0,1,786,-7,0,],},"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesMain","tilesetId":{"name":"tTilesForest","path":"tilesets/tTilesForest/tTilesForest.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":21,"SerialiseHeight":20,"TileCompressedData":[
-4,961,3,534,535,536,-14,961,-4,962,3,596,597,598,-13,962,1,961,-4,1024,3,
658,659,660,-5,1024,324,42,43,44,45,46,47,1024,967,965,463,464,462,463,464,462,
463,464,462,463,464,462,104,105,106,107,108,109,339,1029,965,339,340,338,211,212,213,
339,340,338,339,340,338,166,167,168,169,170,171,401,1029,965,401,402,400,273,274,275,
401,402,400,401,402,400,401,402,400,401,402,462,463,1029,965,463,464,462,335,336,337,
463,464,462,463,464,462,463,464,462,463,211,212,213,1029,965,339,340,338,339,340,338,
339,340,338,339,340,338,339,340,338,339,273,274,275,1029,965,401,402,400,401,402,400,
401,402,400,401,402,400,211,212,213,401,335,336,337,1029,965,463,464,462,463,464,462,
463,464,462,463,464,462,273,274,275,463,464,338,339,1029,965,339,340,338,339,211,212,
213,340,338,339,340,338,335,336,337,339,340,400,401,1029,965,401,402,400,401,273,274,
275,402,400,401,402,400,401,402,400,401,402,462,463,1029,965,463,464,462,463,335,336,
337,464,462,463,464,462,463,464,462,463,464,338,339,1029,965,339,340,338,339,340,338,
339,340,338,211,212,213,339,340,338,339,340,338,339,1029,965,401,402,400,401,402,400,
401,402,400,273,274,275,401,402,400,401,402,400,401,1029,965,463,464,211,212,213,462,
463,464,462,335,336,337,463,464,462,463,211,212,213,1029,965,339,340,273,274,275,338,
339,340,338,339,340,338,339,340,400,401,273,274,275,1029,965,401,402,335,336,337,400,
401,402,400,401,402,400,401,402,462,463,335,336,337,1029,965,-19,1091,2,1090,965,-20,
962,1,1027,],},"visible":true,"depth":400,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","spriteId":null,"colour":4278190080,"x":0,"y":0,"htiled":false,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":15.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":500,"userdefinedDepth":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
  ],
  "inheritLayers": true,
  "creationCodeFile": "",
  "inheritCode": true,
  "instanceCreationOrder": [
    {"name":"inst_5468AA2F","path":"rooms/rFarm/rFarm.yy",},
    {"name":"inst_52A15138","path":"rooms/rFarm/rFarm.yy",},
    {"name":"inst_2A16C0B1","path":"rooms/rFarm/rFarm.yy",},
    {"name":"inst_650F4D3","path":"rooms/rFarm/rFarm.yy",},
    {"name":"inst_2AB9BC2C","path":"rooms/rFarm/rFarm.yy",},
    {"name":"inst_9C5BB22","path":"rooms/rFarm/rFarm.yy",},
  ],
  "inheritCreationOrder": true,
  "sequenceId": null,
  "roomSettings": {
    "inheritRoomSettings": false,
    "Width": 330,
    "Height": 320,
    "persistent": false,
  },
  "viewSettings": {
    "inheritViewSettings": true,
    "enableViews": true,
    "clearViewBackground": false,
    "clearDisplayBuffer": true,
  },
  "physicsSettings": {
    "inheritPhysicsSettings": true,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "parent": {
    "name": "rParent",
    "path": "folders/Rooms/rParent.yy",
  },
}