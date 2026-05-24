///scr_savemenu_perform_save()
/*
**  Usage:
**      scr_savemenu_perform_save()
**
**  Returns:
**      true if global.file was written successfully (and info INI updated).
*/
if (global.file == "")
    return false;

if (!save(global.file))
    return false;

var slot = scr_save_file_to_slot(global.file);
if (slot > 0)
    scr_save_write_info(slot);

return true;
