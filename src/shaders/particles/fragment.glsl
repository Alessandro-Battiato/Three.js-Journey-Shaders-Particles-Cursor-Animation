void main()
{
    vec2 uv = gl_PointCoord;
    float distanceToCenter = distance(uv, vec2(0.5)); // 0.5 because we want to get the center of the particle

    gl_FragColor = vec4(vec3(distanceToCenter), 1.0);
    #include <tonemapping_fragment>
    #include <colorspace_fragment>
}