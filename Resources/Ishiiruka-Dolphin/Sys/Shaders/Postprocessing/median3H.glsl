#define s2(a, b)	temp = a; a = min(a, b); b = max(temp, b);
void main()
{
	float2 size     = GetTargetResolution();
	float2 inv_size = 1.0/size;
	float2 coord = GetCoordinates();
	float4 temp;
	float4 sample0 = SampleLocation(coord);
	float4 sample1 = SampleLocation(coord + float2(0.0,inv_size.y));
	float4 sample2 = SampleLocation(coord + float2(0.0,-inv_size.y));
	s2(sample0, sample1);
	s2(sample1, sample2);
	s2(sample0, sample1);
	SetOutput(sample1);
}
