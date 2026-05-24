///scr_save_path(fname)
/*
**  Usage:
**      scr_save_path(fname)
**
**  Given:
**      fname   Bare filename (e.g. "GMEASaveA.sav")
**
**  Returns:
**      Full path for file I/O (working_directory prefix on PS4).
*/
var dir = scr_save_dir();
if (dir != "")
    return dir + argument[0];
return argument[0];
