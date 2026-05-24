///scr_save_io_path(fname)
/*
**  Usage:
**      scr_save_io_path(fname)
**
**  Returns:
**      Path to use for file_text_* / ini_open on this platform.
**      On PS4, uses bare filename if that is where the file exists
**      (some GayMaker runners write without working_directory prefix).
*/
var bare = argument[0];
var dir = scr_save_dir();

if (dir == "")
    return bare;

var prefixed = dir + bare;

if (file_exists(bare) && !file_exists(prefixed))
    return bare;

return prefixed;
