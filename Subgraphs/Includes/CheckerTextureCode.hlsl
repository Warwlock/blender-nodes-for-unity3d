void node_tex_checker_float(float3 co, float4 color1, float4 color2, float scale, out float4 color, out float fac)
{
    float3 p = co * scale;

    /* Prevent precision issues on unit coordinates. */
    p = (p + 0.000001) * 0.999999;

    int xi = int(abs(floor(p.x)));
    int yi = int(abs(floor(p.y)));
    int zi = int(abs(floor(p.z)));

    bool check = ((fmod(xi, 2) == fmod(yi, 2)) == bool(fmod(zi, 2)));

    color = check ? color1 : color2;
    fac = check ? 1.0 : 0.0;
}