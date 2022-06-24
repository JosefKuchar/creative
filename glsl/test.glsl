float atan2(in float y, in float x)
{
    return x == 0.0 ? sign(y)*3.14159/2.0 : atan(y, x);
}

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{



    // Normalized pixel coordinates (from 0 to 1)
    //vec2 uv = fragCoord/iResolution.xy;

    // Time varying pixel color
    //vec3 col = 0.5 + 0.5*cos(iTime+uv.xyx+vec3(0,2,4));

    vec2 center = iResolution.xy / 2.0;

    float d = distance(center/*+50.0*vec2(cos(iTime*0.0),sin(iTime*0.0))*/, fragCoord);
    float a = atan2(fragCoord.x - center.x, fragCoord.y - center.y);

    bool dist = (int(d / (60.0 + sin(iTime)*500.0) + (a+3.14159) * ((6.0) / 3.14159)) + 50000000) % 2 == 0;
    bool angl = true || int((atan2(fragCoord.x/* + cos(iTime*0.0)*100.0*/ - center.x, fragCoord.y - center.y) + 3.14159) / (3.14159 / 5.0)) % 2 == 0;

    fragColor = dist != angl ? vec4(1.0,1.0,1.0,1.0) : vec4(cos((d)/1000.0),sin(d/1000.0),0,1.0);
}
