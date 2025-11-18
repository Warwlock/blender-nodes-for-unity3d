#ifndef __MathUtil_
#include <MathUtil.hlsl>
#endif

void vector_math_add_float(float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = a + b;
}

void vector_math_subtract_float(
    float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = a - b;
}

void vector_math_multiply_float(
    float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = a * b;
}

void vector_math_divide_float(
    float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = safe_divide(a, b);
}

void vector_math_cross_float(float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = cross(a, b);
}

void vector_math_project_float(
    float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    float lenSquared = dot(b, b);
    outVector = (lenSquared != 0.0) ? (dot(a, b) / lenSquared) * b : float3(0.0, 0.0, 0.0);
}

void vector_math_reflect_float(
    float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = reflect(a, normalize(b));
}

void vector_math_dot_float(float3 a, float3 b, float3 c, float scale, out float outValue)
{
    outValue = dot(a, b);
}

void vector_math_distance_float(
    float3 a, float3 b, float3 c, float scale, out float outValue)
{
    outValue = distance(a, b);
}

void vector_math_length_float(
    float3 a, float3 b, float3 c, float scale, out float outValue)
{
    outValue = length(a);
}

void vector_math_scale_float(float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = a * scale;
}

void vector_math_normalize_float(
    float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = a;
    /* Safe version of normalize(a). */
    float lenSquared = dot(a, a);
    if (lenSquared > 0.0) {
        outVector *= rsqrt(lenSquared);
    }
}

void vector_math_snap_float(float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = floor(safe_divide(a, b)) * b;
}

void vector_math_floor_float(float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = floor(a);
}

void vector_math_ceil_float(float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = ceil(a);
}

void vector_math_modulo_float(
    float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = compatible_mod(a, b);
}

void vector_math_wrap_float(float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = wrap(a, b, c);
}

void vector_math_fraction_float(
    float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = frac(a);
}

void vector_math_absolute_float(
    float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = abs(a);
}

void vector_math_minimum_float(
    float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = min(a, b);
}

void vector_math_maximum_float(
    float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = max(a, b);
}

void vector_math_sine_float(float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = sin(a);
}

void vector_math_cosine_float(
    float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = cos(a);
}

void vector_math_tangent_float(
    float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = tan(a);
}

void vector_math_refract_float(
    float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = refract(a, normalize(b), scale);
}

void vector_math_faceforward_float(
    float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = faceforward(a, b, c);
}

void vector_math_multiply_add_float(
    float3 a, float3 b, float3 c, float scale, out float3 outVector)
{
    outVector = a * b + c;
}