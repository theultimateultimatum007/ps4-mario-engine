///scr_is_ps4()
/*
**  Usage:
**      scr_is_ps4()
**
**  Returns:
**      true on PS4 homebrew (GayMaker-Studio export), false on PC.
**
**  Notes:
**      GayMaker-Studio uses a patched GMS 1.4 runner where os_type == 14 (os_ps4).
**      On Windows builds this is always false, so PC keyboard + gamepad coexist.
*/
return (os_type == 14);
