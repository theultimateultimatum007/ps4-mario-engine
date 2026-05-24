//
// Palette swapper — PS4 / GLES compatible (no DoAlphaTest, fixed loop)
//

attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4(in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~

#ifdef GL_ES
precision mediump float;
#endif

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D palette_texture;
uniform vec2 texel_size;
uniform vec4 palette_UVs;
uniform float palette_index;

void main()
{
    vec4 source = texture2D(gm_BaseTexture, v_vTexcoord);

    if (source.a < 0.01)
        discard;

    float row = palette_UVs.y;
    float maxRow = palette_UVs.w;
    int matched = 0;

    for (int i = 0; i < 64; i++) {
        if (matched == 0 && row <= maxRow) {
            vec4 palRef = texture2D(palette_texture, vec2(palette_UVs.x, row));
            vec3 diff = source.rgb - palRef.rgb;

            if (dot(diff, diff) <= 0.000016) {
                float palette_V = palette_UVs.x + texel_size.x * palette_index;
                source = texture2D(palette_texture, vec2(palette_V, row));
                matched = 1;
            }

            row += texel_size.y;
        }
    }

    gl_FragColor = source * v_vColour;
}
