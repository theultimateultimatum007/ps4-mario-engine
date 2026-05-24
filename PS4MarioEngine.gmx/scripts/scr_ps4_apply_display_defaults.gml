///scr_ps4_apply_display_defaults()
/*
**  Usage:
**      scr_ps4_apply_display_defaults()
**
**  Purpose:
**      Disable PC-only display options on PS4 (fullscreen, FPS overlay, etc.).
*/
if (!scr_is_ps4())
    exit;

with (obj_persistent) {
    showfps = false;
    fullscreen = false;
    filter = 0;
}
