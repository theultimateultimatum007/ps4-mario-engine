///pal_swap_disable()
/*
**  Usage:
**      pal_swap_disable()
**
**  Purpose:
**      Turns off palette-swap shaders (used when PS4 cannot compile/run them).
*/
global.Pal_Swap_Enabled = false;
shader_reset();
