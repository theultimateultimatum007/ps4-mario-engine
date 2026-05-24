///scr_pausemenu_init()
/*
**  Usage:
**      scr_pausemenu_init()
**
**  Purpose:
**      PS4 tweaks for the in-level pause menu (called from obj_pausemenu Create).
**
**  Sets instance variables:
**      use_grayscale_shader — false on PS4 (shader crashes on PSSL)
**      menu_max           — highest menu index (hides Quit Game on PS4)
*/
use_grayscale_shader = true;
menu_max = 2;

if (!scr_is_ps4())
    exit;

use_grayscale_shader = false;
menu_max = 1;
