Shader "MyShader/howiusenormalforcolor"
{
    Properties
    {
        _Color ("Color", Color) = (1,1,1,1)
        _Emis ("Emission", Color) = (0,0,0,0)
        _Normal ("Normal", Color) = (0,0,0,0) 
    }
    SubShader
    {
        CGPROGRAM
        #pragma surface surf Lambert
        

        sampler2D _MainTex;

        struct Input
        {
            float2 uv_MainTex;
        };

        
        fixed4 _Color;
        fixed4 _Emis;
        fixed4 _Normal;

       

        void surf (Input IN, inout SurfaceOutput o)
        {
            o.Albedo = _Color;
            o.Emission = _Emis;
            o.Normal = _Normal;
            
            
        }
        ENDCG
    }
    FallBack "Diffuse"
}
