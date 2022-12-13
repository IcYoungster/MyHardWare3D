float4 main(float3 color:Color) : SV_TARGET
{
	return float4(color,1.0f);
}
//像素着色器不用指定每个像素的位置，只决定每个像素的颜色
//因为光栅化阶段已经定义了每个像素的位置