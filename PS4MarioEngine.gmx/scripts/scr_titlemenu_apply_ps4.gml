///scr_titlemenu_apply_ps4(health_mode)
/*
**  Usage:
**      scr_titlemenu_apply_ps4(health_mode)
**
**  Given:
**      health_mode   0 = standard title menu, 1 = health-mode title menu
**
**  Purpose:
**      Hides PC-only menu entries on PS4 homebrew builds.
*/
global.platform_ps4 = scr_is_ps4();
if (!global.platform_ps4)
    exit;

// Main menu: no Exit (use PS button / system UI to quit)
menu[0,0] = 2;

// Clear leftover PC option labels (Create sets 7 items before this runs)
menu[2,3] = "";
menu[2,4] = "";
menu[2,5] = "";
menu[2,6] = "";
menu[2,7] = "";

// Options: hide Set Window Size, V-Sync, and FPS
if (argument[0] == 0) {
    menu[2,0] = 4;
    menu[2,1] = "Keyboard Configuration";
    if (global.reservedrop)
        menu[2,2] = "Reserve Auto-Drop: On";
    else
        menu[2,2] = "Reserve Auto-Drop: Off";
    menu[2,3] = "View Credits";
    menu[2,4] = "Back";
}
else {
    menu[2,0] = 3;
    menu[2,1] = "Keyboard Configuration";
    menu[2,2] = "View Credits";
    menu[2,3] = "Back";
}
