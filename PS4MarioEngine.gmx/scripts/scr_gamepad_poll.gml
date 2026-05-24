///scr_gamepad_poll()
/*
**  Usage:
**      scr_gamepad_poll()
**
**  Purpose:
**      Map controller input to the engine's virtual keyboard keys.
**
**  PS4 / DualShock (GayMaker-Studio):
**      Cross     = Jump / Spin
**      Square    = Run / Shoot
**      Circle    = Jump / Spin (alt)
**      Triangle  = Reserve item
**      R1 / R2   = Run / Shoot
**      Start     = Pause
**      Select    = (unused)
**
**  PC:
**      Same gp_* constants map to Xbox face buttons (A/B/X/Y) automatically.
**      Physical keyboard still works alongside the controller.
*/
if (!global.gamepad)
    exit;

var gp = gamepad_input;

// Left stick — movement
if (leftstick[0] == 0 && gamepad_axis_value(gp, gp_axislv) <= -0.5) {
    leftstick[0] = 1;
    keyboard_key_press(global.upkey);
}
else if (leftstick[0] == 1 && gamepad_axis_value(gp, gp_axislv) > -0.5) {
    leftstick[0] = 0;
    keyboard_key_release(global.upkey);
}

if (leftstick[1] == 0 && gamepad_axis_value(gp, gp_axislv) >= 0.5) {
    leftstick[1] = 1;
    keyboard_key_press(global.downkey);
}
else if (leftstick[1] == 1 && gamepad_axis_value(gp, gp_axislv) < 0.5) {
    leftstick[1] = 0;
    keyboard_key_release(global.downkey);
}

if (leftstick[2] == 0 && gamepad_axis_value(gp, gp_axislh) <= -0.5) {
    leftstick[2] = 1;
    keyboard_key_press(global.leftkey);
}
else if (leftstick[2] == 1 && gamepad_axis_value(gp, gp_axislh) > -0.5) {
    leftstick[2] = 0;
    keyboard_key_release(global.leftkey);
}

if (leftstick[3] == 0 && gamepad_axis_value(gp, gp_axislh) >= 0.5) {
    leftstick[3] = 1;
    keyboard_key_press(global.rightkey);
}
else if (leftstick[3] == 1 && gamepad_axis_value(gp, gp_axislh) < 0.5) {
    leftstick[3] = 0;
    keyboard_key_release(global.rightkey);
}

// D-pad — movement
if (gamepad_button_check_pressed(gp, gp_padu))
    keyboard_key_press(global.upkey);
else if (gamepad_button_check_released(gp, gp_padu))
    keyboard_key_release(global.upkey);

if (gamepad_button_check_pressed(gp, gp_padd))
    keyboard_key_press(global.downkey);
else if (gamepad_button_check_released(gp, gp_padd))
    keyboard_key_release(global.downkey);

if (gamepad_button_check_pressed(gp, gp_padl))
    keyboard_key_press(global.leftkey);
else if (gamepad_button_check_released(gp, gp_padl))
    keyboard_key_release(global.leftkey);

if (gamepad_button_check_pressed(gp, gp_padr))
    keyboard_key_press(global.rightkey);
else if (gamepad_button_check_released(gp, gp_padr))
    keyboard_key_release(global.rightkey);

// Face buttons — DualShock layout (see GayMaker-Studio README)
// Cross: one-shot press so menus get keyboard_check_pressed(shift)
if (gamepad_button_check_pressed(gp, gp_face1))
    keyboard_key_press(global.shiftkey);
else if (gamepad_button_check_released(gp, gp_face1))
    keyboard_key_release(global.shiftkey);

// Circle = jump in-game only (Back in title menu uses scr_titlemenu_cancel)
if (room != rm_titlemenu) {
    if (gamepad_button_check_pressed(gp, gp_face3))
        keyboard_key_press(global.shiftkey);
    else if (gamepad_button_check_released(gp, gp_face3))
        keyboard_key_release(global.shiftkey);
}

// Square / shoulders = run (held)
if (gamepad_button_check(gp, gp_face2)
 || gamepad_button_check(gp, gp_shoulderr)
 || gamepad_button_check(gp, gp_shoulderrb))
    keyboard_key_press(global.controlkey);
else
    keyboard_key_release(global.controlkey);

// Triangle = reserve (held)
if (gamepad_button_check(gp, gp_face4))
    keyboard_key_press(global.spacekey);
else
    keyboard_key_release(global.spacekey);

// Start = pause (held)
if (gamepad_button_check(gp, gp_start))
    keyboard_key_press(global.enterkey);
else
    keyboard_key_release(global.enterkey);
