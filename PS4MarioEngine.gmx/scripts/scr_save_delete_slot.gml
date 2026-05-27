///scr_save_delete_slot(slot)
/*
**  Usage:
**      scr_save_delete_slot(slot)
**
**  Given:
**      slot  1..3 = delete one slot, 0 = delete all slots
**
**  Returns:
**      true (best effort)
*/
var i, sav, info;

if (argument[0] == 0) {
    for (i = 1; i <= 3; i++) {
        scr_save_delete_slot(i);
    }
    return true;
}

sav = scr_save_slot_sav(argument[0]);
info = scr_save_slot_info(argument[0]);

if (sav != "") {
    if (file_exists(scr_save_io_path(sav))) file_delete(scr_save_io_path(sav));
    if (scr_is_ps4() && file_exists(sav)) file_delete(sav);
}

if (info != "") {
    if (file_exists(scr_save_io_path(info))) file_delete(scr_save_io_path(info));
    if (scr_is_ps4() && file_exists(info)) file_delete(info);
}

return true;
