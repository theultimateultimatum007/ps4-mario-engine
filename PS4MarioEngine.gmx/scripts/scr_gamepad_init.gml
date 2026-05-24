///scr_gamepad_init()
/*
**  Usage:
**      scr_gamepad_init()
**
**  Purpose:
**      Detect platform and enable gamepad input (required on PS4 homebrew).
*/
global.platform_ps4 = scr_is_ps4();

if (global.platform_ps4) {
    // DualShock is always available on PS4; gameplay uses gamepad poll only.
    global.gamepad = true;
}
else
    global.gamepad = gamepad_is_connected(0);

if (global.gamepad && instance_exists(obj_persistent))
    obj_persistent.gamepad_input = 0;
