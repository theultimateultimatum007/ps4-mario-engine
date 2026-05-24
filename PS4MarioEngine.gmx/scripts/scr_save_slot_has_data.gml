///scr_save_slot_has_data(slot)
/*
**  Usage:
**      scr_save_slot_has_data(slot)
**
**  Given:
**      slot   1–3
**
**  Returns:
**      true if the slot has a .sav and/or .ini in the save area.
*/
return scr_save_exists(scr_save_slot_sav(argument[0]))
    || scr_save_exists(scr_save_slot_info(argument[0]));
