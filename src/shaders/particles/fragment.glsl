uniform float uDistanceToCenter;
varying vec3 vColor;

void main()
{
    float distanceToCenter = length(gl_PointCoord - uDistanceToCenter);
    if(distanceToCenter > 0.5)
        discard;
    
    gl_FragColor = vec4(vColor, 1.0);

    #include <tonemapping_fragment>
    #include <colorspace_fragment>
}