#ifdef GL_ES
precision mediump float;
#endif

void main(void)
{
    float alpha = 1.0-length((gl_PointCoord-0.5)*2.0);
    gl_FragColor = vec4(1.0,1.0,1.0,alpha);
}
