

//INSTRUCTIONS put this in the create event of the object calling the shader

//guassion = shader_get_uniform(shd_gaussion,"size");
//g_width = room_width/2; // again, you can set this to whatever you want, in fact, you may have to change it to get it to look right
//g_height = room_height/2; // same here
//g_size = .3; // and here

// then put this in the draw zone of wherever you set the shader (so basically put this in between shader_set(); and shader_reset())

//shader_set_uniform_f(guassion,g_width,g_height,g_size);


varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec3 size; //width,height,radius

const int Quality = 8;
const int Directions = 16;
const float Pi = 6.28318530718;//pi * 2


void main()
{
    vec2 radius = size.z/size.xy;
    vec4 Color = texture2D( gm_BaseTexture, v_vTexcoord);
    for( float d=0.0;d<Pi;d+=Pi/float(Directions) )
    {
        for( float i=1.0/float(Quality);i<=1.0;i+=1.0/float(Quality) )
        {
            Color += texture2D( gm_BaseTexture, v_vTexcoord+vec2(cos(d),sin(d))*radius*i);
        }
    }
    Color /= float(Quality)*float(Directions)+1.0;
    gl_FragColor =  Color *  v_vColour;
}







