if (isNil "change_terrain_Metallica") then {change_terrain_Metallica = true;} else {change_terrain_Metallica = !change_terrain_Metallica};
if (change_terrain_Metallica) then {
setTerrainGrid 50;
hint "Terrain Low";
cutText [format["Terrain Low"], "PLAIN DOWN"];
} else {
setTerrainGrid 12.5;
hint "Terrain Normal";
cutText [format["Terrain Normal"], "PLAIN DOWN"];
};



/*
3 setFog 0;
3 setovercast 0;
setViewDistance 2500;
setDate [date select 0, date select 1, date select 2, 8, 0];
*/
