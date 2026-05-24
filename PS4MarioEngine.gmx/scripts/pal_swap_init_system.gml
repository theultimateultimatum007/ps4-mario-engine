///pal_swap_init_system(shader_index);

/*
**  Usage:
**      pal_swap_init_system(shader_index);
**
**  Arguments:
**      shader_index: Name of the shader.
**
**  Function:
**      Initiates the palette swapping system.
*/

globalvar Pal_Shader, Pal_Texel_Size, Pal_UVs, Pal_Index, Pal_Texture;
global.Pal_Swap_Enabled = true;

Pal_Shader = argument[0];
Pal_Texel_Size = shader_get_uniform(argument[0], 'texel_size');
Pal_UVs = shader_get_uniform(argument[0], 'palette_UVs');
Pal_Index = shader_get_uniform(argument[0], 'palette_index');
Pal_Texture = shader_get_sampler_index(argument[0], 'palette_texture');

// PS4: skip palette shader if uniforms are unavailable (prevents world-map crash)
if (scr_is_ps4()) {
    if (Pal_Texel_Size < 0 || Pal_UVs < 0 || Pal_Index < 0)
        pal_swap_disable();
}
