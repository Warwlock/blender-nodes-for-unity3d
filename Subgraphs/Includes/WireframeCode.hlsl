void node_wireframe_screenspace_float(float size, float2 barycentric, out float fac)
{
	float3 barys = barycentric.xyy;
	barys.z = 1.0 - barycentric.x - barycentric.y;

	size *= (1.0 / 3.0);
	float3 dx = ddx(barys);
	float3 dy = ddy(barys);
	float3 deltas = sqrt(dx * dx + dy * dy);

	float3 s = step(-deltas * size, -barys);

	fac = max(s.x, max(s.y, s.z));
}

void node_wireframe_float(float size, float2 barycentric, float3 barycentric_dist, out float fac)
{
	float3 barys = barycentric.xyy;
	barys.z = 1.0 - barycentric.x - barycentric.y;

	size *= 0.5;
	float3 s = step(-size, -barys * barycentric_dist);

	fac = max(s.x, max(s.y, s.z));
}