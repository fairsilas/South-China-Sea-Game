places = [
{
title : "Macao",
desc : "Significant large trade center",
xx : 396,
yy : 245,
col: c_white,
rm: rm_test_land,
adj: ["Hainan","Xiamen"],
},
{
title : "Taiwan",
desc : "An island off the coast of China.",
xx : 526,
yy : 225,
col: c_white,
rm: rm_test_land,
adj: ["Xiamen"],
},
{
title : "Xiamen",
desc : "A trade capital. Near Taiwan",
xx : 491,
yy : 207,
col: c_white,
rm: rm_test_land,
adj: ["Taiwan","Macao"],
},
{
title : "Weizhou",
desc : "A small pirate base island.",
xx : 349,
yy : 267,
col: c_white,
rm: rm_test_land,
adj: ["Hainan","Macao"],
},
{
title : "Hainan",
desc : "A pirate island",
xx : 346,
yy : 296,
col: c_white,
rm: rm_test_land,
adj: ["Weizhou", "Macao"],
}
]



adj_map = ds_map_create()
for(i=0;i<array_length(places);i++){
	ds_map_add(adj_map, places[i].title, places[i])
}
global.current_place = adj_map[? "Macao"]
global.target_place = noone


//... add more places here in this format and add neighbors for travel







