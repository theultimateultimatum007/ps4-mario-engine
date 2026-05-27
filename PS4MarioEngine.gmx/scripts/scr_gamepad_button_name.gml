///scr_gamepad_button_name(btn)
/*
**  Usage:
**      scr_gamepad_button_name(btn)
**
**  Returns:
**      A short label for a gp_* button constant.
*/
var b = argument[0];

// DualShock names (GayMaker PS4)
if (b == gp_face1) return "Cross";
if (b == gp_face2) return "Circle";
if (b == gp_face3) return "Square";
if (b == gp_face4) return "Triangle";

if (b == gp_shoulderl) return "L1";
if (b == gp_shoulderlb) return "L2";
if (b == gp_shoulderr) return "R1";
if (b == gp_shoulderrb) return "R2";

if (b == gp_start) return "Start";
if (b == gp_select) return "Select";

if (b == gp_stickl) return "L3";
if (b == gp_stickr) return "R3";

return "?";
