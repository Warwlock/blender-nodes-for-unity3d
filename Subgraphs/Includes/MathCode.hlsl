#ifndef __MathUtil_
#include <MathUtil.hlsl>
#endif

//All Math Functions
void math_add_float(float a, float b, float c, out float result)
{
    result = a + b;
}

void math_subtract_float(float a, float b, float c, out float result)
{
    result = a - b;
}

void math_multiply_float(float a, float b, float c, out float result)
{
    result = a * b;
}

void math_divide_float(float a, float b, float c, out float result)
{
    result = safe_divide(a, b);
}

void math_power_float(float a, float b, float c, out float result)
{
    if (a >= 0.0) {
        result = compatible_pow(a, b);
    }
    else {
        float fraction = mod(abs(b), 1.0);
        if (fraction > 0.999 || fraction < 0.001) {
            result = compatible_pow(a, floor(b + 0.5));
        }
        else {
            result = 0.0;
        }
    }
}

void math_logarithm_float(float a, float b, float c, out float result)
{
    result = (a > 0.0 && b > 0.0) ? log2(a) / log2(b) : 0.0;
}

void math_sqrt_float(float a, float b, float c, out float result)
{
    result = (a > 0.0) ? sqrt(a) : 0.0;
}

void math_inversesqrt_float(float a, float b, float c, out float result)
{
    result = rsqrt(a);
}

void math_absolute_float(float a, float b, float c, out float result)
{
    result = abs(a);
}

void math_radians_float(float a, float b, float c, out float result)
{
    result = radians(a);
}

void math_degrees_float(float a, float b, float c, out float result)
{
    result = degrees(a);
}

void math_minimum_float(float a, float b, float c, out float result)
{
    result = min(a, b);
}

void math_maximum_float(float a, float b, float c, out float result)
{
    result = max(a, b);
}

void math_less_than_float(float a, float b, float c, out float result)
{
    result = (a < b) ? 1.0 : 0.0;
}

void math_greater_than_float(float a, float b, float c, out float result)
{
    result = (a > b) ? 1.0 : 0.0;
}

void math_round_float(float a, float b, float c, out float result)
{
    result = floor(a + 0.5);
}

void math_floor_float(float a, float b, float c, out float result)
{
    result = floor(a);
}

void math_ceil_float(float a, float b, float c, out float result)
{
    result = ceil(a);
}

void math_fraction_float(float a, float b, float c, out float result)
{
    result = a - floor(a);
}

void math_modulo_float(float a, float b, float c, out float result)
{
    result = compatible_mod(a, b);
}

void math_trunc_float(float a, float b, float c, out float result)
{
    result = trunc(a);
}

void math_snap_float(float a, float b, float c, out float result)
{
    result = floor(safe_divide(a, b)) * b;
}

void math_pingpong_float(float a, float b, float c, out float result)
{
    result = (b != 0.0) ? abs(frac((a - b) / (b * 2.0)) * b * 2.0 - b) : 0.0;
}

/* Adapted from godotengine math_funcs.h. */
void math_wrap_float(float a, float b, float c, out float result)
{
    result = wrap(a, b, c);
}

void math_sine_float(float a, float b, float c, out float result)
{
    result = sin(a);
}

void math_cosine_float(float a, float b, float c, out float result)
{
    result = cos(a);
}

void math_tangent_float(float a, float b, float c, out float result)
{
    result = tan(a);
}

void math_sinh_float(float a, float b, float c, out float result)
{
    result = sinh(a);
}

void math_cosh_float(float a, float b, float c, out float result)
{
    result = cosh(a);
}

void math_tanh_float(float a, float b, float c, out float result)
{
    result = tanh(a);
}

void math_arcsine_float(float a, float b, float c, out float result)
{
    result = (a <= 1.0 && a >= -1.0) ? asin(a) : 0.0;
}

void math_arccosine_float(float a, float b, float c, out float result)
{
    result = (a <= 1.0 && a >= -1.0) ? acos(a) : 0.0;
}

void math_arctangent_float(float a, float b, float c, out float result)
{
    result = atan(a);
}

void math_arctan2_float(float a, float b, float c, out float result)
{
    result = atan2(b, a);
}

void math_sign_float(float a, float b, float c, out float result)
{
    result = sign(a);
}

void math_exponent_float(float a, float b, float c, out float result)
{
    result = exp(a);
}

void math_compare_float(float a, float b, float c, out float result)
{
    result = (abs(a - b) <= max(c, 1e-5)) ? 1.0 : 0.0;
}

void math_multiply_add_float(float a, float b, float c, out float result)
{
    result = a * b + c;
}

/* See: https://www.iquilezles.org/www/articles/smin/smin.htm. */
void math_smoothmin_float(float a, float b, float c, out float result)
{
    if (c != 0.0) {
        float h = max(c - abs(a - b), 0.0) / c;
        result = min(a, b) - h * h * h * c * (1.0 / 6.0);
    }
    else {
        result = min(a, b);
    }
}

void math_smoothmax_float(float a, float b, float c, out float result)
{
    math_smoothmin_float(-a, -b, c, result);
    result = -result;
}