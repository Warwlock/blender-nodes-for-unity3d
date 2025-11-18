#ifndef __MathUtil_
#include <MathUtil.hlsl>
#endif

float node_gamma_float(float4 col, float gamma, out float4 outcol)
{
    outcol = col;

    if (col.r > 0.0) {
        outcol.r = compatible_pow(col.r, gamma);
    }
    if (col.g > 0.0) {
        outcol.g = compatible_pow(col.g, gamma);
    }
    if (col.b > 0.0) {
        outcol.b = compatible_pow(col.b, gamma);
    }
    return outcol;
}