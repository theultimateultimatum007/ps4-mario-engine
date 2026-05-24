///scr_save_refresh_title_slots()
/*
**  Usage:
**      scr_save_refresh_title_slots()
**
**  Purpose:
**      Refresh File A/B/C labels on the title menu (call from obj_titlemenu).
*/
var slot, letter, c, e, comp;
for (slot = 1; slot <= 3; slot++) {
    letter = chr(64 + slot);
    if (scr_save_slot_has_data(slot) && scr_save_read_info(slot)) {
        c = global.save_read_coins;
        e = global.save_read_exits;
        comp = global.save_read_clear;
        if (scr_save_exists(scr_save_slot_sav(slot))
        && !scr_save_exists(scr_save_slot_info(slot)))
            menu[1, slot] = "File " + letter + " ..... Saved";
        else
            menu[1, slot] = "File " + letter + " ..... E: " + string_format(e, 3, 0)
                + " - | " + string_add_zeros(c, 3) + "/" + string_add_zeros(global.levelmax * 3, 3)
                + " (" + string_format(comp, 3, 0) + "%)";
    }
    else
        menu[1, slot] = "File " + letter + " ..... New!";
}
