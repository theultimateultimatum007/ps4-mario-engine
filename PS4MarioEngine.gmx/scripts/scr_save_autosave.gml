///scr_save_autosave()
/*
**  Usage:
**      scr_save_autosave()
**
**  Purpose:
**      Write the current slot after beating a level (map return).
**      Progress is lost on quit if we only save at Toad houses.
**
**  Returns:
**      true if a save was written.
*/
if (global.file == "")
    return false;

if (global.cheats)
    return false;

return scr_savemenu_perform_save();
