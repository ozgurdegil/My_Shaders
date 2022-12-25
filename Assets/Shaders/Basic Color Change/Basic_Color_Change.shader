Shader "MyShader/Basic_Color_Change"
{
    Properties
    {
        _Color ("Color", Color) = (1,1,1,1)
        
    }
    SubShader
    {

        CGPROGRAM
        
        #pragma surface surf Lambert
        
        struct Input
        {
            float2 uv_MainTex;
        };

        
        fixed4 _Color;
        

        void surf (Input IN, inout SurfaceOutput o)
        {
            o.Albedo = _Color;
        }
        ENDCG
    }
    FallBack "Diffuse"
}
