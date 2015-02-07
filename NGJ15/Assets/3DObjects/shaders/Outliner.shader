Shader "Custom/MyOutline" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {} // Main Texture
		_Color ("Main Color", Color) = (0.0, 0.0, 1.0, 1.0)
		_Outline("Outline Thickness", Range(0, 0.15)) = 0.08 // thickness
		_OutlineColor ("Outline Color", Color) = (0.0,0.0,0.0,1.0) 
		_Ramp("Ramp Texture", 2D) = "white" // Shadowing Map
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200 // level of detail

		Pass // This first one creates the outline
		{

			Cull Front // Render only what the camera cannot see.
			Lighting Off // Disable Lighting... Ask Daniel Why.
			ZWrite On // Send Pixels from this object to the depth buffer.
			Tags {"LightMode" = "ForwardBase"} // Set Lighting type.
			Blend SrcAlpha OneMinusSrcAlpha // Set up alpha blending if the outline needs it.

			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			#include "unityCG.cginc" // include helping parameters

			// Application to Vertex
			struct a2v
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float3 tangent : TANGENT;
			};

			// Vertex to Pixel
			struct v2f
			{
				float4 pos : POSITION;
			};

			float _Outline;
			float4 _OutlineColor;

			// Vertex Shader
			v2f vert ( a2v v)
			{
				v2f o; // output

				// This next part expands the faces along the normal of each vertex

				//Convert vertices from world space into viewspace
				float4 pos = mul(UNITY_MATRIX_MV, v.vertex);

				//Now we convert the normal of the vertex into viewspace.
				//To do this we use the inverse ModelView Transform Matrix
				float3 normal = mul((float3x3)UNITY_MATRIX_IT_MV, v.normal);

				//fix the z element of the normal to a minimal value
				normal.z = -0.4f;

				//Move the face along the normalized normal with the amount of _Outline
				pos = pos + float4(normalize(normal),0)*_Outline;

				// convert the vertex position into projection space... what is projection space ?
				o.pos = mul(UNITY_MATRIX_P, pos);

				return o;
			}
			//fragment shader
			float4 frag (v2f IN) : COLOR
			{
				return _OutlineColor;
			}
			ENDCG
		} // end of pass one, outline is now made.
		//-------------------------------------------------------------------------------------------------------------------------------------------------------------

		// Pass two, creating color and shadows.
		Pass 
		{
			
			Cull Back // only render polygons facing the camera
			Lighting On
			Tags { "LightMode" = "ForwardBase"}

			CGPROGRAM
			// Upgrade NOTE: excluded shader from DX11 and Xbox360; has structs without semantics (struct v2f members lightDirection)
			//#pragma exclude_renderers d3d11 xbox360

			#pragma vertex vert
			#pragma fragment frag

			#include "UnityCG.cginc" // include help
			uniform float4 _LightColor0; //Unity variable.

			sampler2D _MainTex;
			sampler2D _Ramp;

			float4 _Color;
			float4 _MainTex_ST;
			
			struct a2v
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 texcoord : TEXCOORD0;
				float4 tangent : TANGENT;
			};
			struct v2f 
			{
				float4 pos : POSITION;
				float2 uv : TEXCOORD0;
				float3 lightDirection : TEXCOORD2;
			};

			v2f vert (a2v v)
			{
				v2f o;
				// create a rotation matrix for tangent space
				TANGENT_SPACE_ROTATION;

				//Store the light's direction in tangent space... I should learn what tangent space means.
				o.lightDirection = mul(rotation, ObjSpaceLightDir(v.vertex));

				//transform the vertex to projection space... Again? Projection space... Does it mean object projected onto the 2D view plane?
				o.pos = mul(UNITY_MATRIX_MVP, v.vertex);

				//Get the UV Coordinates
				o.uv = TRANSFORM_TEX(v.texcoord, _MainTex);
				return o;
			}
			float4 frag(v2f i) : COLOR
			{
				//Get the color of the pixel from the texture and the main colour
				float4 c = _Color * tex2D(_MainTex, i.uv);

				//Instead of bump map a neutral value is used. Daniel had issues with this - we should solve it!
				float3 up;
				up.x = 0.0;
				up.y = 0.0;
				up.z = 1.0;

				//based on the ambient light
				float3 lightColor = UNITY_LIGHTMODEL_AMBIENT.xyz;

				//the squared distance to the light
				float lengthSq = dot(i.lightDirection, i.lightDirection);

				// Fix the attenuation based on the distance
				float atten = 1.0 / (1.0 + lengthSq);

				//Angle to the light
				float diff = saturate(dot(up, normalize(i.lightDirection)));

				//perform toon light mapping
				diff = tex2D( _Ramp, float2(diff, 0.5));

				//Update the colour
				lightColor += _LightColor0.rgb * (diff * atten);

				//Produce the final color
				c.rgb = lightColor * c.rgb * 2;

				return c;
			}
			
			ENDCG
		}
	} 
	FallBack "diffuse"
}
