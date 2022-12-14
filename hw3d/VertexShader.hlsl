struct VSOut
{
	float3 color:Color;//放前面
	float4 pos:SV_POSITION;
};

cbuffer CBuf
{
	row_major matrix transform;
};

VSOut main(float2 pos : POSITION, float3 color:Color)
{
	VSOut vso;
	//mul:矩阵乘法，dx为右乘
	vso.pos = mul(float4(pos.x, pos.y, 0.0f, 1.0f),transform);
	vso.color = color;
	return vso;
}