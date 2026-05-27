///scr_titlemenu_cancel()
/*
**  Usage:
**      scr_titlemenu_cancel()
**
**  Returns:
**      true if Circle / B was pressed and the menu went back.
**
**  PS4: Back button is configurable (default Circle).
*/
if (!global.gamepad)
    return false;

if (!gamepad_button_check_pressed(0, global.gp_bind_back))
    return false;

audio_play_sound(snd_correct, 0, false);

if (page == 1 || page == 2) {
    page = 0;
    current = 1;
    return true;
}

if (page == 3 || page == 4) {
    page = 2;
    current = 1;
    return true;
}

if (page == 5) {
    page = 2;
    current = 1;
    return true;
}

if (page == 6) {
    page = 2;
    current = 1;
    return true;
}

return false;
