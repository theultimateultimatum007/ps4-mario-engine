///scr_save_write_info(slot)
/*
**  Usage:
**      scr_save_write_info(slot)
**
**  Given:
**      slot   1–3 (or pass scr_save_file_to_slot(global.file))
**
**  Returns:
**      true if info file was written.
*/
if (argument[0] < 1 || argument[0] > 3)
    return false;

var info = scr_save_slot_info(argument[0]);
ini_open(scr_save_io_path(info));
ini_write_real("Coins", "Data", global.starcoins);
ini_write_real("Exits", "Data", (ds_map_size(global.exits) + ds_map_size(global.exits2)));
ini_write_real("Clear", "Completion", global.gameclear);
ini_close();
return true;
