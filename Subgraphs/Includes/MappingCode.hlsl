#ifndef __MathUtil_
#include <MathUtil.hlsl>
#endif

/*Main Code
void mapping_mat4(
    float3 vec, float4 m0, float4 m1, float4 m2, float4 m3, float3 minvec, float3 maxvec, out float3 outvec)
{
    float4x4 mat = float4x4(m0, m1, m2, m3);
    outvec = (mat * float4(vec, 1.0)).xyz;
    outvec = clamp(outvec, minvec, maxvec);
}*/

void mapping_point_float(float3 vecto, float3 location, float3 rotation, float3 scale, out float3 result)
{
    result = (mul(euler_to_mat3(rotation), (vecto * scale))) + location;
}

void mapping_texture_float(float3 vecto, float3 location, float3 rotation, float3 scale, out float3 result)
{
    result = safe_divide(mul(transpose(euler_to_mat3(rotation)), (vecto - location)), scale);
}

void mapping_vector_float(float3 vecto, float3 location, float3 rotation, float3 scale, out float3 result)
{
    result = mul(euler_to_mat3(rotation), (vecto * scale));
}

void mapping_normal_float(float3 vecto, float3 location, float3 rotation, float3 scale, out float3 result)
{
    result = normalize(mul(euler_to_mat3(rotation), safe_divide(vecto, scale)));
}