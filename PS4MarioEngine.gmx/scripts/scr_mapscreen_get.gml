///scr_mapscreen_get(key, default)
/*
**  Usage:
**      scr_mapscreen_get(key, default)
**
**  Returns:
**      Value from global.mapscreen, or default if the key is missing.
**      Avoids undefined reads on PS4 when map paths were never opened.
*/
if (!ds_map_exists(global.mapscreen, argument[0]))
    return argument[1];
return ds_map_find_value(global.mapscreen, argument[0]);
