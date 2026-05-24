///scr_save_dir()
/*
**  Usage:
**      scr_save_dir()
**
**  Returns:
**      Save directory path on PS4 (working_directory), empty on PC.
**      GMS 1.4 resolves bare filenames on PC without a prefix.
*/
if (scr_is_ps4())
    return working_directory;
return "";
