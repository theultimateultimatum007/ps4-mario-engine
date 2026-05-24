///scr_save_exists(fname)
/*
**  Usage:
**      scr_save_exists(fname)
**
**  Given:
**      fname   Bare filename
**
**  Returns:
**      true if the file exists in the save area.
*/
if (file_exists(scr_save_io_path(argument[0])))
    return true;

// PS4: also check bare name (runner may not use working_directory prefix)
if (scr_is_ps4() && file_exists(argument[0]))
    return true;

return false;
