Shader "ShaderReplacement/SecondShader"
{
	SubShader
	{
		Tags {"RenderType" = "CustomRendering"}
		Pass
		{
			CGPROGRAM
			#pragma vertex vertex_shader
			#pragma fragment pixel_shader
			
			void vertex_shader (inout float4 vertex:POSITION,inout float2 uv:TEXCOORD0)
			{
				vertex = UnityObjectToClipPos(vertex);
			}
			
			float4 pixel_shader (float4 vertex:POSITION,float2 uv:TEXCOORD0) : SV_TARGET
			{
				return float4(0,0,1,1);
			}
			ENDCG
		}
	}
}