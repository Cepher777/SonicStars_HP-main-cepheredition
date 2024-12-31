varying vec2 v_vTexcoord;
varying vec4 v_vColour;

vec3 fuzzyblur(vec2 uv, float offset)
{
	float _r = texture2D( gm_BaseTexture, vec2(uv.x+offset, uv.y)).r;
	float _g = texture2D( gm_BaseTexture, uv).g;
	float _b = texture2D( gm_BaseTexture, vec2(uv.x-offset, uv.y)).b;
	return vec3(_r,_g,_b);
}

void main()
{

   vec4 color = gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	color.rgb = v_vColour.rgb * fuzzyblur(v_vTexcoord, 0.09 * 0.01);
	color.rgb *= (1.-.12)+(sin(v_vTexcoord.y*20000.)*0.12);
	//color.rgb *= (1.-.02)+(sin(v_vTexcoord.x*11000.)*0.02);
	
	gl_FragColor = color;
}
