///scr_savemenu_cancel()
/*
**  Usage:
**      scr_savemenu_cancel()
**
**  Returns:
**      true if Circle was pressed (continue without saving).
*/
if (!global.gamepad)
    return false;

if (!gamepad_button_check_pressed(0, global.gp_bind_back))
    return false;

if (!instance_exists(obj_savemenu))
    return false;

with (obj_savemenu) {

    if (ready != 1)
        exit;

    audio_play_sound(snd_correct, 0, false);
    alarm[0] = 2;
    quitable = 1;
}

return true;
