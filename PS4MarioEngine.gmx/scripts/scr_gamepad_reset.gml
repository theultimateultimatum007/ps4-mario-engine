///scr_gamepad_reset()
/*
**  Usage:
**      scr_gamepad_reset()
**
**  Purpose:
**      Release virtual keys synthesized by scr_gamepad_poll and reset
**      stick state on obj_persistent (e.g. after death or game over).
*/
if (!instance_exists(obj_persistent))
    exit;

with (obj_persistent) {

    leftstick[0] = 0;
    leftstick[1] = 0;
    leftstick[2] = 0;
    leftstick[3] = 0;

    keyboard_key_release(global.upkey);
    keyboard_key_release(global.downkey);
    keyboard_key_release(global.leftkey);
    keyboard_key_release(global.rightkey);
    keyboard_key_release(global.shiftkey);
    keyboard_key_release(global.controlkey);
    keyboard_key_release(global.spacekey);
    keyboard_key_release(global.enterkey);
}
