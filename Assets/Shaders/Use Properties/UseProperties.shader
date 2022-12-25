Shader "MyShader/UseProperties"
{
    Properties
    {
        _Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_MainCube ("Cube (RGB)", Cube) = "white" {}
		_Range ("Range", Range(0, 1)) = 0.5
		_Float ("Float", Float) = 0.5
		_Vector ("Vector", Vector) = (0,0,0,0)
    }
    SubShader
    {
       
        CGPROGRAM
        #pragma surface surf Lambert
		
		fixed4 _Color;
		half _Range;
		sampler2D _MainTex;
		samplerCUBE _MainCube;
	    float _Float;
		float4 _Vector;
		


        struct Input
        {
           float2 uv_MainTex;
			float3 worldRefl;
        };
        



        void surf (Input IN, inout SurfaceOutput o)
        {
            o.Albedo = (tex2D(_MainTex, IN.uv_MainTex) *_Range ) * _Color.rgb;
        }
        ENDCG
    }
    FallBack "Diffuse"
}
