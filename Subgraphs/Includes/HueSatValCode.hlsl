#ifndef __ColorUtil_
#include <ColorUtil.hlsl>
#endif

void hue_sat_float(float hue, float sat, float value, float fac, float4 col, out float4 outcol)
{
	float4 hsv;

	rgb_to_hsv(col, hsv);

	hsv[0] = frac(hsv[0] + hue + 0.5);
	hsv[1] = clamp(hsv[1] * sat, 0.0, 1.0);
	hsv[2] = hsv[2] * value;

	hsv_to_rgb(hsv, outcol);

	outcol = lerp(col, outcol, fac);
}