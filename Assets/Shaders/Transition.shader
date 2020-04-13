Shader "Hidden/Transition"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "" {}
		_TrashTex ("TrashTex", 2D) = "" {}
	}
		SubShader
	{
		// No culling or depth
		Cull Off ZWrite Off ZTest Always

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			#include "UnityCG.cginc"

			float _Cutoff;

            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                float4 vertex : SV_POSITION;
            };

			//Vertex Shader
            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = v.uv;
                return o;
            }

            sampler2D _MainTex;
			sampler2D _TrashTex;

			//Fragment Shader
            fixed4 frag (v2f i) : SV_Target
            {
				fixed4 col = tex2D(_MainTex, i.uv);
				fixed4 color_trash = tex2D(_TrashTex, i.uv);
				
				float w_d = step(_Cutoff, color_trash.r * 0.99);

				col.rgb *= w_d;
				//Debug Trash Texture
				//col.rgb = color_trash;

                // just inverts the colors
                //col.rgb = 1 - col.rgb;
                return col;
            }
            ENDCG
        }
    }
}
