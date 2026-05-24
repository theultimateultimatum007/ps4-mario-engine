///scr_save_read_info(slot)
/*
**  Usage:
**      scr_save_read_info(slot)
**
**  Given:
**      slot   1–3
**
**  Returns:
**      true if info file exists and was read.
**      Sets global.save_read_coins, save_read_exits, save_read_clear.
*/
var slot = argument[0];
var info = scr_save_slot_info(slot);

if (!scr_save_exists(info)) {

    // Slot has progress but no INI (common on PS4) — show as saved
    if (scr_save_exists(scr_save_slot_sav(slot))) {
        global.save_read_coins = 0;
        global.save_read_exits = 0;
        global.save_read_clear = 0;
        return true;
    }
    return false;
}

ini_open(scr_save_io_path(info));
global.save_read_coins = ini_read_real("Coins", "Data", 0);
global.save_read_exits = ini_read_real("Exits", "Data", 0);
global.save_read_clear = ini_read_real("Clear", "Completion", 0);
ini_close();
return true;
