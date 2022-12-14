struct VSOut
{
	float3 color:Color;//��ǰ��
	float4 pos:SV_POSITION;
};

cbuffer CBuf
{
	row_major matrix transform;
};

VSOut main(float2 pos : POSITION, float3 color:Color)
{
	VSOut vso;
	//mul:����˷���dxΪ�ҳ�
	vso.pos = mul(float4(pos.x, pos.y, 0.0f, 1.0f),transform);
	vso.color = color;
	return vso;
}