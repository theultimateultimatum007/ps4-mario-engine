///scr_gamepad_pick_button(device)
/*
**  Usage:
**      scr_gamepad_pick_button(device)
**
**  Returns:
**      The first gamepad button constant pressed this frame, or -1.
*/
var d = argument[0];

// Face buttons
if (gamepad_button_check_pressed(d, gp_face1)) return gp_face1;
if (gamepad_button_check_pressed(d, gp_face2)) return gp_face2;
if (gamepad_button_check_pressed(d, gp_face3)) return gp_face3;
if (gamepad_button_check_pressed(d, gp_face4)) return gp_face4;

// Shoulders
if (gamepad_button_check_pressed(d, gp_shoulderl)) return gp_shoulderl;
if (gamepad_button_check_pressed(d, gp_shoulderlb)) return gp_shoulderlb;
if (gamepad_button_check_pressed(d, gp_shoulderr)) return gp_shoulderr;
if (gamepad_button_check_pressed(d, gp_shoulderrb)) return gp_shoulderrb;

// System
if (gamepad_button_check_pressed(d, gp_start)) return gp_start;
if (gamepad_button_check_pressed(d, gp_select)) return gp_select;

// Stick clicks
if (gamepad_button_check_pressed(d, gp_stickl)) return gp_stickl;
if (gamepad_button_check_pressed(d, gp_stickr)) return gp_stickr;

return -1;
///scr_gamepad_pick_button(device)
/*
**  Returns:
**      Gamepad button constant pressed this frame, or -1.
*/
var d = argument[0];
// Face buttons
if (gamepad_button_check_pressed(d, gp_face1)) return gp_face1;
if (gamepad_button_check_pressed(d, gp_face2)) return gp_face2;
if (gamepad_button_check_pressed(d, gp_face3)) return gp_face3;
if (gamepad_button_check_pressed(d, gp_face4)) return gp_face4;
// Shoulders
if (gamepad_button_check_pressed(d, gp_shoulderl)) return gp_shoulderl;
if (gamepad_button_check_pressed(d, gp_shoulderlb)) return gp_shoulderlb;
if (gamepad_button_check_pressed(d, gp_shoulderr)) return gp_shoulderr;
if (gamepad_button_check_pressed(d, gp_shoulderrb)) return gp_shoulderrb;
// System
if (gamepad_button_check_pressed(d, gp_start)) return gp_start;
if (gamepad_button_check_pressed(d, gp_select)) return gp_select;
// Stick clicks
if (gamepad_button_check_pressed(d, gp_stickl)) return gp_stickl;
if (gamepad_button_check_pressed(d, gp_stickr)) return gp_stickr;
return -1;
